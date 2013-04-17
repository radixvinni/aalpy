# coding: utf-8

from code import InteractiveConsole
from uuid import uuid1
import sys
sessions = dict()

import signal
from multiprocessing import Lock
lock = Lock()
from datetime import datetime, timedelta
import time

# Сброс сессии, если небыло ни одной операции за час (плохо, может он справку читает)
def handler(signum, frame):
	lock.acquire()
	long_ago = datetime.now()-timedelta(hours=1)
	sess = sessions.copy()
	for sid in sess:
		if(sess[sid].last_op<long_ago):
			sessions.pop(sid)
	lock.release()


signal.signal(signal.SIGALRM, handler)
signal.setitimer(signal.ITIMER_REAL,1,3600)

# Завершаем работу при превышении лимита 30 сек процессорного времени.
from resource import setrlimit, RLIMIT_CPU
setrlimit(RLIMIT_CPU, (30,300))

#<sessions>
class ConsoleCache:
    def __init__(self): self.reset()
    def reset(self): self.out = []
    def write(self,line): self.out.append(line)
    def flush(self):
        output = "".join(self.out)
        self.reset()
        return output

class Session(InteractiveConsole):
    def __init__(self,uid,name):
        self.stdout = sys.stdout
        self.stderr = sys.stderr
        self.cache = ConsoleCache()
        self.sid = str(uuid1())
        self.uid = uid
        self.last_op = datetime.now()
        self.name = name
        self.goal = False
        InteractiveConsole.__init__(self)
        self.push("from AAL import *");
        self.push("from math import *");
        self.push("from fractions import *");
        self.push("__builtins__ = __builtins__.copy()");
        self.push("for k in ['reload', 'execfile', 'file', 'open', '__import__']: __builtins__.pop(k) and None");
        self.push("");
        return
    def setsid(self,sessionid):
        self.sid = sessionid
    def accept_output(self):
        sys.stdout = self.cache
        sys.stderr = self.cache
    def return_output(self):
        sys.stdout = self.stdout
        sys.stderr = self.stderr
    def push(self,line, mode='single', name='auto'):
        self.last_op = datetime.now()
        self.accept_output()
        ret = InteractiveConsole.runsource(self,line,'<'+name+'>',mode)
        self.return_output()
        return ret
    def get_output(self,cmd):
        ret=self.cache.flush()
        if(self.goal and self.goal==sha(ret.strip(' \r\n\t'))):
            save('complete',(self.uid, self.tid))
            return cmd
        return ret

def reset(sid):
    sessions.pop(sid)
    c = AalConsole()
    c.setsid(sid)
    sessions[sid] = c


#<db:sqlite3>
import sqlite3
if(not sqlite3.threadsafety): print 'WARNING: sqlite3 IS NOT thread safe. Data concurrency is not guaranteed.'

from hashlib import sha512

def sha(t):
    return sha512(t).hexdigest()



def check_user_credentials(name,password):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('SELECT id FROM users WHERE login=? AND pass=?', (name,sha(password)))
    r = cur.fetchone()
    if r: return r[0]
    return False

def change_pass(uid, password, newpass):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('UPDATE users SET pass=? WHERE id=? AND pass=?', (sha(newpass),uid,sha(password)))
    conn.commit()
    return cur.rowcount>0

def is_user():
    sid = request.get_cookie("session")
    lock.acquire()
    if sid in sessions:
        lock.release()
        return True
    else:
        lock.release()
    return redirect("/login")

def is_admin():
    sid = request.get_cookie("session")
    lock.acquire()
    if sid in sessions and sessions[sid].name == 'admin':
        lock.release()
        return True
    else:
        lock.release()
        return redirect("/login?error=admin")

def init():
    conn = sqlite3.connect('wiki.db')
    conn.create_function("sha", 1, sha)
    cur = conn.cursor()
    cur.execute('CREATE TABLE IF NOT EXISTS users(id INTEGER PRIMARY KEY AUTOINCREMENT, login TEXT UNIQUE, pass TEXT)')
    cur.execute("INSERT OR IGNORE INTO users(login, pass) VALUES ('admin',sha('123'))")
    cur.execute('CREATE TABLE IF NOT EXISTS courses(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT UNIQUE, descr TEXT)')
    cur.execute('CREATE TABLE IF NOT EXISTS tasks(id INTEGER PRIMARY KEY AUTOINCREMENT, cid INTEGER, title TEXT UNIQUE, descr TEXT, goal TEXT)')
    cur.execute('CREATE TABLE IF NOT EXISTS complete(uid INTEGER, tid INTEGER, UNIQUE(uid, tid) ON CONFLICT IGNORE)')
    cur.execute('CREATE TABLE IF NOT EXISTS history(id INTEGER PRIMARY KEY AUTOINCREMENT, uid INTEGER, time INTEGER, command TEXT, result TEXT)')
    cur.execute('CREATE TABLE IF NOT EXISTS guide(id INTEGER PRIMARY KEY AUTOINCREMENT, uid INTEGER, name TEXT DEFAULT (datetime()), content TEXT)')
    conn.commit()

def get_all(name):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('SELECT * FROM %s' % name)
    r = cur.fetchall()
    if r: return r
    return ''

def get_by_id(name,i):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('SELECT * FROM %s where id = ?' % name, (i,))
    r = cur.fetchone()
    if r: return r
    return ''
    
def get_course(cid=None, tid=None):
    sid=request.get_cookie("session")
    uid=sessions[sid].uid
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    conn.row_factory = sqlite3.Row
    cur = conn.cursor()
    if cid is not None:
        cid = "WHERE cid="+str(cid)
    #content - данные по найденому курсу cid или всем курсам, если cid==None + всего заданий
    cur.execute('SELECT cid, courses.title, courses.descr, 100.0/COUNT(cid) as count FROM courses INNER JOIN tasks ON cid=courses.id '+(cid or '')+' GROUP BY cid')
    content=cur.fetchall()
    if not content: return dict(content=[])
    ret = dict(content=content)
    tasks = dict()
    cmpl = dict()
    for row in content: 
        cmpl[row['cid']] = 0
        tasks[row['cid']] = []
    for row in cur.execute('SELECT tasks.id, tasks.title, tasks.descr, tasks.goal, uid, cid FROM courses INNER JOIN tasks ON cid=courses.id LEFT JOIN complete ON tasks.id=tid AND uid=? '+(cid or ''), [uid]):
        status=row['uid'] and "bar-success" or cmpl[row['cid']]==0 and ' ' or None
        if row['goal']!='' and status !='bar-success': cmpl[row['cid']]+=1
        tasks[row['cid']].append((row['title'],status,row['id'],row['descr'],row['goal'],row['cid']))
        if 'tid' not in ret and status !='bar-success' or str(tid)==str(row['id']) and status is not None:
            ret['tid']=row['id']
            ret['goal']=row['goal']
            ret['title']=row['title']
            ret['descr']=row['descr']
            ret['uid']=row['uid']
    #tasks = индикаторы выполнения заданий: [(название, статус),...], 
    ret['tasks']=tasks
    return ret

def save(name,content):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('REPLACE INTO %s VALUES(%s)' % (name,','.join(['?' for i in content])), content)
    conn.commit()

def insert_guide(uid,content):
    conn = sqlite3.connect('wiki.db')
    conn.text_factory = lambda x: unicode(x, 'utf-8', 'ignore')
    cur = conn.cursor()
    cur.execute('INSERT INTO guide(uid,content) VALUES(?,?)', (uid,content))
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
        cur.execute('SELECT login, uid, time, command, result FROM history LEFT JOIN users ON users.id=uid WHERE time>?', [time.time()-604800])
        r = cur.fetchall()
        for i in range(0,len(r)): r[i] += (datetime.fromtimestamp(r[i][2]).strftime("%Y-%m-%d"), datetime.fromtimestamp(r[i][2]).strftime("%H:%M:%S"), r[i][0])
    else: 
        cur.execute('SELECT * FROM history WHERE uid=? and time>?', (uid, timestamp))
        r = cur.fetchall()
        for i in range(0,len(r)): r[i] += (datetime.fromtimestamp(r[i][2]).strftime("%Y-%m-%d"), datetime.fromtimestamp(r[i][2]).strftime("%H:%M:%S"))
    return r or ''
    
#</db:sqlite3>
from os.path import isdir, join
from os import listdir
def get_docs(root='assets/doc',depth=2):
    """
    Collect folders and subfolders
    """
    if depth==0: return listdir(root)
    a=dict()
    for c in filter(lambda d: isdir(join(root, d)) and not d.startswith('.'), listdir(root)):
        a[c] = get_docs(join(root, c), depth-1)
    return a

from bottle import *

@route('/')
@view('menu')
def index():
    is_user()
    return get_course()

@route('/course/:cid')
@view('course')
def index(cid):
    is_user()
    sid=request.get_cookie("session")
    lock.acquire()
    work=get_course(cid, request.query.task) or redirect('/')
    sessions[sid].tid=work['tid']
    sessions[sid].goal=work['goal'] or None
    lock.release()
    return work

@route('/guide/:gid')
@view('guide_worksheet')
def guide_worksheet(gid):
    is_user()
    return dict(content=get_by_id('guide',gid))
@route('/guide')
@view('guide_list')
def guide():
    is_user()
    return dict(content=get_all('guide'))
@route('/guide/record')
@view('guide_record')
def guide_record():
    is_admin()
    return dict()
#@ajax
@post('/guide/save')
def guide_save():
    sid=request.get_cookie("session")
    if sid not in sessions or sessions[sid].name != 'admin': return '<div class="alert alert-error"><strong>О нет!</strong>Ваша сессия закончилась не вовремя. Попробуйте войти в новой вкладке и сохранить еще раз.</div>'
    deltas=request.forms.get('content')
    gid=insert_guide(sessions[sid].uid, deltas)
    return '<div class="alert alert-success"><strong>Сохранено!</strong> <a href="/guide/%s">Ваша запиcь</a> сохранена.</div>' % gid
    

@route('/aal')
@view('worksheet')
def work():
    is_user()
    return dict()

@route('/authors')
@view('authors')
def index():
    return dict(is_user=request.get_cookie("session"))

@route('/help')
@route('/help/:sect')
def index(sect='aal'):
    is_user()
    if sect not in ['python','aal','dev','class']: redirect('/help')
    return template('help'+sect)

@route('/login')
@post('/login')
def login():
    error = request.query.error or request.forms.get('username') and "wrong"
    username = request.forms.get('username')
    password = request.forms.get('password')
    uid = username and check_user_credentials(username, password)
    if uid:
        c = Session(uid, username)
        lock.acquire()
        sessions[c.sid] = c
        lock.release()
        response.set_cookie("session", c.sid)
        #i can not use redirect
        response.status=302;
        response.add_header('Location','/');
        return ''
    else:
        return template('login', username=username, error=error, is_user=request.get_cookie("session"))

@route('/logout')
def logout():
    sid=request.get_cookie("session")
    response.set_cookie("session", '')
    lock.acquire()
    if sid in sessions: sessions.pop(sid)
    lock.release()
    #i can not use redirect
    response.status=302;
    response.add_header('Location','/');
    return ''

#@ajax(то есть никаких редиректов!)
@post('/changepass')
def changepass():
    sid=request.get_cookie("session")
    oldpass = request.forms.get('oldpass')
    newpass = request.forms.get('newpass')
    if sid not in sessions: return 'no session'
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
#@ajax
@post('/console/run')
def run_prog():
    "многострочный режим, вернуть результат выполнения программы"
    cmd = request.forms.get('cmd')
    typ = request.forms.get('type')
    sid = request.get_cookie("session")
    try:
        lock.acquire()
        if sid in sessions: 
            lock.release()
            sessions[sid].push(cmd, 'single' if typ=='console' else 'exec', typ)
            res = sessions[sid].get_output(cmd)
            save('history', (None, sessions[sid].uid, int(time.time()), cmd, res))
            return res
        else:
            lock.release()
            return "Ваша сессия закончилась. перезагрузите страницу.\n"
    except:
        return "Unexpected error: %s \n" % str(sys.exc_info())

import resource

@route('/stats')
@view('stats')
def stats():
    is_user()
    usage = resource.getrusage(resource.RUSAGE_SELF)
    stats = ['%-25s (%-10s) = %s' % (desc, name, getattr(usage, name)) for name, desc in [
        ('ru_utime', 'User time'),
        ('ru_stime', 'System time'),
        ('ru_maxrss', 'Max. Resident Set Size') ]] + [
        '%-35s    = %s' % ('Maintainance time', signal.getitimer(signal.ITIMER_REAL)[0])]
    
    return dict(content=stats)

@route('/history')
@route('/history/today')
@view('history')
def history():
    is_user()
    return dict(content=get_history(sessions[request.get_cookie("session")].uid, time.time()-86400), f=1)
@route('/history/week')
@view('history')
def history():
    is_user()
    return dict(content=get_history(sessions[request.get_cookie("session")].uid, time.time()-604800), f=2)
@route('/history/month')
@view('history')
def history():
    is_user()
    return dict(content=get_history(sessions[request.get_cookie("session")].uid, time.time()-2592000), f=3)
@route('/history/users')
@view('history')
def history():
    is_admin()
    return dict(content=get_history(), f=4)
@route('/history/delete')
def history():
    is_admin()
    empty_history()
    return redirect("/history")
from json import dumps
@route('/admin')
@route('/admin/:name')
@view('admin')
def edit(name='users'):
    is_admin()
    return dict(content=dumps(get_course()['tasks'].items() if name=='tasks' else get_all(name)), name=name, courses=get_all("courses"), docs=get_docs())

@post('/admin')
@post('/admin/:name')
def modify(name='users'):
    is_admin()
    if request.forms.action == 'save':
        save(name,name == 'users' and (request.forms.get('id') or None,request.forms.get('login'),sha(request.forms.get('pass')))
            or name == 'courses' and (request.forms.get('id') or None,request.forms.get('title'),request.forms.get('descr'))
            or name == 'tasks' and (request.forms.get('id') or None, request.forms.get('cid'), request.forms.get('title'),
            request.forms.get('descr'),sha(request.forms.get('newgoal')) if request.forms.get('newgoal') else request.forms.get('goal'))
            or name == 'guide' and (request.forms.get('id') or None, request.forms.get('uid'), request.forms.get('name'),request.forms.get('content'))
            )
    elif request.forms.action == 'delete':
        sql_delete(name,request.forms.get('id') or redirect("/admin/"+name))
    return redirect("/admin/"+name)
    
@route('/assets/<filename:path>')
def send_static(filename):
    return static_file(filename, root='assets')

@error(404)
@error(500)
def mistake(error):
    return static_file('error.html', root='views')

Request.MEMFILE_MAX = 1024000
init()
run(host='0.0.0.0',port=8080,reloader=True,server='cherrypy')
