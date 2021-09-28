# coding: utf-8
# ALTER TABLE courses ADD COLUMN grp TEXT;
# ALTER TABLE courses ADD COLUMN discipline TEXT;
from json import dumps
import resource
from bottle import *
from os import listdir
from os.path import isdir, join
from hashlib import sha512
import sqlite3
from resource import setrlimit, RLIMIT_CPU
import json
from urllib import quote, unquote
import time
from datetime import datetime, timedelta
from multiprocessing import Lock
import signal
import sys
from uuid import uuid1
from code import InteractiveConsole
import os
os.environ['KERAS_BACKEND'] = 'theano'

sessions = dict()

lock = Lock()


def handler(signum, frame):
    #print 'Выполнение команды приостановлено из-за превышения предела времени выполнения(60 секунд)'
    sys.exit(0)


#signal.signal(signal.SIGALRM, handler)
signal.signal(signal.SIGVTALRM, handler)

# Завершаем работу при превышении лимита 30 сек процессорного времени.
setrlimit(RLIMIT_CPU, (60, 500))

# <sessions>


class ConsoleCache:
    def __init__(self): self.reset()
    def reset(self): self.out = []
    def write(self, line): self.out.append(line)

    def flush(self):
        output = "".join(self.out)
        self.reset()
        return output


class Session(InteractiveConsole):
    def __init__(self, uid, name):
        self.stdout = sys.stdout
        self.stderr = sys.stderr
        self.cache = ConsoleCache()
        self.sid = str(uuid1())
        self.uid = uid
        self.last_op = datetime.now()
        self.name = name
        self.goal = False
        InteractiveConsole.__init__(self)
        self.push("from AAL import *")
        self.push("from math import *")
        self.push("import json, hashlib, hmac, gssapi, mpmath as g, gmpy, pandas,numpy,numpy.dual,numpy.matlib,scipy,scipy.cluster,scipy.constants,scipy.fftpack,scipy.integrate,scipy.interpolate,scipy.linalg,scipy.misc,scipy.ndimage,scipy.odr,scipy.optimize,scipy.signal,scipy.sparse,scipy.sparse.linalg,scipy.spatial,scipy.special,scipy.stats,matplotlib,matplotlib.pyplot,matplotlib.sankey,matplotlib.animation,theano,seaborn,keras,sklearn,sklearn.cluster,sklearn.calibration,sklearn.compose,sklearn.covariance,sklearn.cross_decomposition,sklearn.datasets,sklearn.decomposition,sklearn.discriminant_analysis,sklearn.ensemble,sklearn.feature_extraction,sklearn.feature_selection,sklearn.gaussian_process,sklearn.impute,sklearn.isotonic,sklearn.kernel_approximation,sklearn.kernel_ridge,sklearn.linear_model,sklearn.manifold,sklearn.metrics,sklearn.mixture,sklearn.model_selection,sklearn.multiclass,sklearn.multioutput,sklearn.naive_bayes,sklearn.neighbors,sklearn.neural_network,sklearn.pipeline,sklearn.preprocessing,sklearn.random_projection,sklearn.semi_supervised,sklearn.svm,sklearn.tree,sklearn.utils")
        self.push("np=numpy;plt=matplotlib.pyplot;pd=pandas;sns=seaborn")
        self.push("aesara=theano;from time import sleep")
        self.push("from fractions import *")
        self.push("from urllib import urlopen")
        self.push("from maude.maude import maude, reset_maude;import maude.sppm as pm")
        self.push("import share, random, AAL, Kar, aAl, Uni")
        self.push("__builtins__ = __builtins__.copy()")
        self.push(
            "for k in ['reload', 'execfile', 'file', 'open', '__import__']: __builtins__.pop(k) and None", "exec")
        self.push("")
        self.cache.flush()
        return

    def setsid(self, sessionid):
        self.sid = sessionid

    def accept_output(self):
        sys.stdout = self.cache
        sys.stderr = self.cache

    def return_output(self):
        sys.stdout = self.stdout
        sys.stderr = self.stderr

    def push(self, line, mode='single', name='auto'):
        self.last_op = datetime.now()
        self.accept_output()
        signal.setitimer(signal.ITIMER_VIRTUAL, 10)
        ret = InteractiveConsole.runsource(self, line, '<'+name+'>', mode)
        signal.setitimer(signal.ITIMER_VIRTUAL, 0)
        self.return_output()
        return ret

    def ic_push(self, line, mode='single', name='auto'):
        self.last_op = datetime.now()
        self.accept_output()
        signal.setitimer(signal.ITIMER_VIRTUAL, 10)
        ret = InteractiveConsole.push(self, line)
        signal.setitimer(signal.ITIMER_VIRTUAL, 0)
        self.return_output()
        return ret

    def get_output(self, cmd):
        ret = self.cache.flush()
        if(self.goal and self.goal == sha(ret.strip(' \r\n\t'))):
            save('complete', (self.uid, self.tid))
            return cmd
        return ret


def reset(sid):
    sessions.pop(sid)
    c = AalConsole()
    c.setsid(sid)
    sessions[sid] = c


# <db:sqlite3>
if(not sqlite3.threadsafety):
    print 'WARNING: sqlite3 IS NOT thread safe. Data concurrency is not guaranteed.'


def sha(t):
    return sha512(t).hexdigest()


def check_user_credentials(name, password):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('SELECT id FROM users WHERE login=? AND pass=?',
                (name, sha(password)))
    r = cur.fetchone()
    if r:
        return r[0]
    return False


def change_pass(uid, password, newpass):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('UPDATE users SET pass=? WHERE id=? AND pass=?',
                (sha(newpass), uid, sha(password)))
    conn.commit()
    return cur.rowcount > 0


def require_login(require_admin=0):
    sid = request.get_cookie("session")
    lock.acquire()
    if sid in sessions and (require_admin != 1 or sessions[sid].name == 'admin') and (require_admin == 2 or sessions[sid].name != 'user'):
        lock.release()
        return True
    else:
        lock.release()
    return redirect("/login"+("?error=admin" if require_admin == 1 else ""))


def is_admin():
    sid = request.get_cookie("session")
    lock.acquire()
    ret = sessions[sid].name == 'admin'
    lock.release()
    return ret


def init():
    conn = sqlite3.connect('wiki.db')
    conn.create_function("sha", 1, sha)
    cur = conn.cursor()
    cur.execute(
        'CREATE TABLE IF NOT EXISTS users(id INTEGER PRIMARY KEY AUTOINCREMENT, login TEXT UNIQUE, pass TEXT)')
    cur.execute(
        "INSERT OR IGNORE INTO users(login, pass) VALUES ('admin',sha('123'))")
    cur.execute('CREATE TABLE IF NOT EXISTS courses(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT UNIQUE, descr TEXT, grp TEXT, discipline TEXT)')
    cur.execute('CREATE TABLE IF NOT EXISTS tasks(id INTEGER PRIMARY KEY AUTOINCREMENT, cid INTEGER, title TEXT UNIQUE, descr TEXT, goal TEXT)')
    cur.execute(
        'CREATE TABLE IF NOT EXISTS complete(uid INTEGER, tid INTEGER, UNIQUE(uid, tid) ON CONFLICT IGNORE)')
    cur.execute('CREATE TABLE IF NOT EXISTS history(id INTEGER PRIMARY KEY AUTOINCREMENT, uid INTEGER, time INTEGER, command TEXT, result TEXT)')
    cur.execute('CREATE TABLE IF NOT EXISTS guide(id INTEGER PRIMARY KEY AUTOINCREMENT, uid INTEGER, name TEXT DEFAULT (datetime()), content TEXT)')
    cur.execute(
        'CREATE UNIQUE INDEX IF NOT EXISTS task_name ON tasks(cid, title)')
    conn.commit()


def get_all(name):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('SELECT * FROM %s' % name)
    r = cur.fetchall()
    if r:
        return r
    return ''


def get_by_id(name, i):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('SELECT * FROM %s where id = ?' % name, (i,))
    r = cur.fetchone()
    if r:
        return r
    return ''


def get_course(cid=None, tid=None, discipline=None, group=None):
    sid = request.get_cookie("session")
    uid = sessions[sid].uid
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    conn.row_factory = sqlite3.Row
    cur = conn.cursor()
    params = []
    sql = ''
    if cid is not None:
        sql = "WHERE cid=?"
        params.append(cid)
    elif discipline is not None:
        sql = "WHERE discipline=?"
        params.append(discipline)
        if group is not None:
            sql += " AND grp like ?"
            params.append('%'+group+'%')
    # content - данные по найденому курсу cid или всем курсам, если cid==None + всего заданий
    cur.execute('SELECT cid, courses.title, courses.descr, 100.0/COUNT(cid) as count FROM courses INNER JOIN tasks ON cid=courses.id '+sql+' GROUP BY cid', params)
    content = cur.fetchall()
    tasks = dict()
    ret = dict(content=content, tasks=tasks, discipline=discipline,
               group=group, quote=quote, unquote=unquote)
    if not content:
        return ret
    cmpl = dict()
    for row in content:
        cmpl[row['cid']] = 0
        tasks[row['cid']] = []
    for row in cur.execute('SELECT tasks.id, tasks.title, tasks.descr, tasks.goal, uid, cid FROM courses INNER JOIN tasks ON cid=courses.id LEFT JOIN complete ON tasks.id=tid AND uid=? '+sql, [uid]+params):
        status = row['uid'] and "bar-success" or cmpl[row['cid']
                                                      ] == 0 and ' ' or None
        if row['goal'] != '' and status != 'bar-success':
            cmpl[row['cid']] += 1
        tasks[row['cid']].append(
            (row['title'], status, row['id'], row['descr'], row['goal'], row['cid']))
        if 'tid' not in ret and status != 'bar-success' or str(tid) == str(row['id']) and status is not None:
            ret['tid'] = row['id']
            ret['goal'] = row['goal']
            ret['title'] = row['title']
            ret['descr'] = row['descr']
            ret['uid'] = row['uid']
    # tasks = индикаторы выполнения заданий: [(название, статус),...],
    return ret


def save(name, content):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('REPLACE INTO %s VALUES(%s)' %
                (name, ','.join(['?' for i in content])), content)
    conn.commit()


def insert_guide(uid, content):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('INSERT INTO guide(uid,content) VALUES(?,?)', (uid, content))
    conn.commit()
    return cur.lastrowid


def sql_delete(name, i):
    conn = sqlite3.connect('wiki.db')
    cur = conn.cursor()
    cur.execute('DELETE FROM %s WHERE id=?' % name, [i])
    conn.commit()


def empty_history():
    conn = sqlite3.connect('wiki.db')
    cur = conn.cursor()
    cur.execute('DELETE FROM history')
    conn.commit()


def get_history(uid=None, timestamp=None):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    if (uid is None):
        cur.execute('SELECT login, uid, time, command, result FROM history LEFT JOIN users ON users.id=uid WHERE time>?', [
                    time.time()-604800])
        r = cur.fetchall()
        for i in range(0, len(r)):
            r[i] += (datetime.fromtimestamp(r[i][2]).strftime("%Y-%m-%d"),
                     datetime.fromtimestamp(r[i][2]).strftime("%H:%M:%S"), r[i][0])
    else:
        cur.execute('SELECT * FROM history WHERE uid=? and time>?',
                    (uid, timestamp))
        r = cur.fetchall()
        for i in range(0, len(r)):
            r[i] += (datetime.fromtimestamp(r[i][2]).strftime("%Y-%m-%d"),
                     datetime.fromtimestamp(r[i][2]).strftime("%H:%M:%S"))
    return r or ''


# </db:sqlite3>
def get_docs(root='assets/doc', depth=2):
    """
    Collect folders and subfolders
    """
    if depth == 0:
        return listdir(root)
    a = dict()
    for c in filter(lambda d: isdir(join(root, d)) and not d.startswith('.'), listdir(root)):
        a[c] = get_docs(join(root, c), depth-1)
    return a


@route('/')
@view('menu')
def index():
    require_login()
    discipline = request.params.getunicode('discipline')
    group = request.params.getunicode('group')
    if group is None:
        return dict(discipline=discipline, group=group, courses=get_all("courses"), quote=quote, unquote=unquote)
    return get_course(discipline=discipline, group=group)


@route('/course/:cid')
@view('course')
def index(cid):
    require_login()
    sid = request.get_cookie("session")
    lock.acquire()
    work = get_course(cid, request.query.task) or redirect('/')
    sessions[sid].tid = work['tid']
    sessions[sid].goal = work['goal'] or None
    lock.release()
    return work


@post('/blockly')
def blockly():
    require_login(require_admin=1)
    name = request.forms.getunicode('name')
    descr = request.forms.getunicode('descr')
    blockid = request.forms.getunicode('id')
    action = request.forms.getunicode('action')
    visibility = request.forms.getunicode('visibility')
    index = json.load(open('assets/mobile/index.json'))
    workspace = request.forms.getunicode('workspace')
    if action == 'save':
        index[blockid] = {"name": name, "descr": descr,
                          "workspace": workspace, "visibility": visibility}
        json.dump(index, open('assets/mobile/index.json', 'w'), indent=4)

    elif action == 'delete':
        del index[blockid]
        json.dump(index, open('assets/mobile/index.json', 'w'), indent=4)


@route('/notebook/:path')
@view('notebook')
def guide_worksheet(path):
    require_login()

    from IPython.nbformat import current as nbformat
    from IPython.nbconvert.exporters import HTMLExporter
    from IPython.config import Config
    try:
        nb = nbformat.reads_json(file("notebooks/"+path).read())
    except IOError:
        return "Файл %s не найден" % (path)

    config = Config()
    config.HTMLExporter.template_file = 'basic'
    config.NbconvertApp.fileext = 'html'
    config.CSSHTMLHeaderTransformer.enabled = False
    # don't strip the files prefix - we use it for redirects
    config.Exporter.filters = {'strip_files_prefix': lambda s: s}
    C = HTMLExporter(config=config)
    body = C.from_notebook_node(nb)

    return dict(content=body[0])


@route('/reveal/:path')
def guide_worksheet(path):
    require_login()

    from IPython.nbformat import current as nbformat
    from IPython.nbconvert.exporters import RevealExporter
    from IPython.config import Config
    try:
        nb = nbformat.reads_json(file("notebooks/"+path).read())
    except IOError:
        return "Файл %s не найден" % (path)

    c = Config({
        'RevealHelpTransformer': {
            'enabled': True,
            'url_prefix': 'reveal.js',
        },
    })

    exportHtml = RevealExporter(config=c)
    (body, resources) = exportHtml.from_notebook_node(nb)

    return body.encode('utf-8')


@route('/guide/:gid')
@view('guide_worksheet')
def guide_worksheet(gid):
    require_login()
    return dict(content=get_by_id('guide', gid))


@route('/guide')
@view('guide_list')
def guide():
    require_login()
    return dict(content=get_all('guide'), notebooks=listdir('notebooks'), is_admin=is_admin())


@route('/guide/record')
@view('guide_record')
def guide_record():
    require_login(require_admin=1)
    return dict()
# @ajax
@post('/guide/save')
def guide_save():
    sid = request.get_cookie("session")
    if sid not in sessions or sessions[sid].name != 'admin':
        return '<div class="alert alert-error"><strong>О нет!</strong>Ваша сессия закончилась не вовремя. Попробуйте войти в новой вкладке и сохранить еще раз.</div>'
    deltas = request.forms.getunicode('content')
    gid = insert_guide(sessions[sid].uid, deltas)
    return '<div class="alert alert-success"><strong>Сохранено!</strong> <a href="/guide/%s">Ваша запиcь</a> сохранена.</div>' % gid


@route('/aal')
@view('worksheet')
def work():
    require_login(require_admin=2)
    return dict()


@route('/authors')
@view('authors')
def index():
    return dict(is_user=request.get_cookie("session"))


@route('/help')
@route('/help/:sect')
def index(sect='aal'):
    require_login(require_admin=2)
    if sect not in ['python', 'aal', 'dev', 'class', 'sage']:
        redirect('/help')
    return template('help'+sect)


@route('/login')
@post('/login')
def login():
    error = request.query.error or request.forms.getunicode(
        'username') and "wrong"
    username = request.forms.getunicode('username')
    password = request.forms.getunicode('password')
    uid = username and check_user_credentials(username, password)
    if uid:
        c = Session(uid, username)
        lock.acquire()
        sessions[c.sid] = c
        lock.release()
        response.set_cookie("session", c.sid)
        # i can not use redirect
        response.status = 302
        response.add_header('Access-Control-Allow-Origin', '*')
        response.add_header('Location', '/aal')
        return ''
    else:
        return template('login', username=username, error=error, is_user=request.get_cookie("session"))


@route('/logout')
def logout():
    sid = request.get_cookie("session")
    response.set_cookie("session", '')
    lock.acquire()
    if sid in sessions:
        sessions.pop(sid)
    lock.release()
    # i can not use redirect
    response.status = 302
    response.add_header('Access-Control-Allow-Origin', '*')
    response.add_header('Location', '/')
    return ''

# @ajax(то есть никаких редиректов!)
@post('/changepass')
def changepass():
    sid = request.get_cookie("session")
    oldpass = request.forms.getunicode('oldpass')
    newpass = request.forms.getunicode('newpass')
    response.add_header('Access-Control-Allow-Origin', '*')
    if sid not in sessions:
        return 'no session'
    if change_pass(sessions[sid].uid, oldpass, newpass):
        return 'ok'
    else:
        return 'wrong pass'


'''
#эти две функции предназначены для "правильной" реализации консоли
#/execute принимает однострочную команду, выполнает, выводит: '0' если она завершилась
#'1' если нужна следующая строка, например если было "def foo():", либо ошибку синтаксиса.
#/output выводит результат предыдущего /execut-а

# Сейчас для выполнения команд в консоли используется /run. Многострочная команда 
#определяется на клиенте по отступам и двоеточиям. Не лучший способ, но работает.
@post('/console/execute')
def execute():
    cmd = request.forms.get('cmd')
    sid = request.get_cookie("session")
    try:
        if sid in sessions: 
            return str(int(sessions[sid].push(cmd)))
        else:
            return "Ваша сессия закончилась. перезагрузите страницу."
    except:
        return "Unexpected error: %s \n" % str(sys.exc_info())

@route('/console/output')
def output():
    sid=request.get_cookie("session")
    if sid in sessions: return sessions[sid].get_output()
    else: return "Ваша сессия закончилась. перезагрузите страницу."
'''
# @ajax
@post('/console/run')
def run_prog():
    "многострочный режим, вернуть результат выполнения программы"
    cmd = request.forms.get('cmd')
    typ = request.forms.get('type')
    sid = request.get_cookie("session")
    if '__bases__' in cmd or '__subclasses__' in cmd or '__builtins__' in cmd:
        return 'не балуйся'
    try:
        lock.acquire()
        if sid in sessions:
            lock.release()
            if typ == 'program':
                sessions[sid].push(cmd, 'exec', typ)
            elif typ == 'console':
                for line in cmd.split('\n'):
                    sessions[sid].ic_push(line, 'single', typ)
            else:
                sessions[sid].push(cmd, 'single', typ)

            res = sessions[sid].get_output(cmd)
            save('history', (None, sessions[sid].uid, int(
                time.time()), cmd, res))
            response.add_header('Access-Control-Allow-Origin', '*')
            return res
        else:
            lock.release()
            return "Ваша сессия закончилась. перезагрузите страницу.\n"
    except:
        return "Unexpected error: %s \n" % str(sys.exc_info())


@route('/stats')
@view('stats')
def stats():
    require_login()
    usage = resource.getrusage(resource.RUSAGE_SELF)
    stats = ['%-25s (%-10s) = %s' % (desc, name, getattr(usage, name)) for name, desc in [
        ('ru_utime', 'User time'),
        ('ru_stime', 'System time'),
        ('ru_maxrss', 'Max. Resident Set Size')]] + [
        '%-35s    = %s' % ('Maintainance time', signal.getitimer(signal.ITIMER_REAL)[0])]

    return dict(content=stats)


@route('/history')
@route('/history/today')
@view('history')
def history():
    require_login()
    return dict(content=get_history(sessions[request.get_cookie("session")].uid, time.time()-86400), f=1)


@route('/history/week')
@view('history')
def history():
    require_login()
    return dict(content=get_history(sessions[request.get_cookie("session")].uid, time.time()-604800), f=2)


@route('/history/month')
@view('history')
def history():
    require_login()
    return dict(content=get_history(sessions[request.get_cookie("session")].uid, time.time()-2592000), f=3)


@route('/history/users')
@view('history')
def history():
    require_login(require_admin=1)
    return dict(content=get_history(), f=4)


@route('/history/delete')
def history():
    require_login(require_admin=1)
    empty_history()
    return redirect("/history")


@route('/admin')
@route('/admin/:name')
@view('admin')
def edit(name='users'):
    require_login(require_admin=1)
    return dict(content=dumps(get_course()['tasks'].items() if name == 'tasks' else get_all(name)), name=name, courses=get_all("courses"), docs=get_docs())


@post('/admin')
@post('/admin/:name')
def modify(name='users'):
    require_login(require_admin=1)
    if request.forms.action == 'save':
        save(name, name == 'users' and (request.forms.getunicode('id') or None, request.forms.getunicode('login'), sha(request.forms.getunicode('pass')))
             or name == 'courses' and (request.forms.getunicode('id') or None, request.forms.getunicode('title'), request.forms.getunicode('descr'), ', '.join(request.forms.getall('grp')), request.forms.getunicode('discipline'))
             or name == 'tasks' and (request.forms.getunicode('id') or None, request.forms.getunicode('cid'), request.forms.getunicode('title'),
                                     request.forms.getunicode('descr'), sha(request.forms.getunicode('newgoal')) if request.forms.getunicode('newgoal') else request.forms.getunicode('goal'))
             or name == 'guide' and (request.forms.getunicode('id') or None, request.forms.getunicode('uid'), request.forms.getunicode('name'), request.forms.getunicode('content'))
             )
    elif request.forms.action == 'delete':
        sql_delete(name, request.forms.getunicode(
            'id') or redirect("/admin/"+name))
    return redirect("/admin/"+name)


# polling обмен данными "общего модуля" в сети
polls = dict()
@route('/poll/:user/:passw/get/:var')
def poll_get(user, passw, var):
    uid = user and check_user_credentials(user, passw)
    if uid:
        if not polls.get(uid):
            polls[uid] = dict()
        return str(polls[uid].get(var, ''))


@route('/poll/:user/:passw/list')
def poll_list(user, passw):
    uid = user and check_user_credentials(user, passw)
    if uid:
        if not polls.get(uid):
            polls[uid] = dict()
        return dumps(polls[uid])


@post('/poll/:user/:passw/set/:var')
def poll_list(user, passw, var):
    uid = user and check_user_credentials(user, passw)
    if uid:
        if not polls.get(uid):
            polls[uid] = dict()
        polls[uid][var] = request.forms.getunicode('value')
        return str(polls[uid][var])


@get('/poll/:user/:passw/del/:var')
def poll_del(user, passw, var):
    uid = user and check_user_credentials(user, passw)
    if uid:
        if not polls.get(uid):
            polls[uid] = dict()
        if var in polls[uid]:
            polls[uid].pop(var)
        return ''
# /polling


@route('/assets/<filename:path>')
def send_static(filename):
    response = static_file(filename, root='assets')
    if filename == 'sagejs/embedded_sagecell.js':
        response.set_header("Cache-Control", "public, max-age=604800")
    return response


@error(404)
@error(500)
def mistake(error):
    return static_file('error.html', root='views')


if __name__ == "__main__":
    Request.MEMFILE_MAX = 1024000
    init()
    run(host='0.0.0.0', port=8081, reloader=True)  # server='cherrypy'
