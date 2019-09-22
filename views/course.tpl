<div class="btn-toolbar">
  %include toolbar
</div>
<div class="container">
  <div class="row">
    <div class="span5 sw-mode-vis">
      <a href="#" class="pull-right" onclick="switch_mode();"><i class="icon-chevron-left"></i> Скрыть</a>
      <h1>{{content[0]['title']}}</h1>
      <div class="progress indicator">
        %for task in tasks[content[0][0]]:
        %if task[1] is not None:
        <div class="bar {{task[1]}}" title="{{task[0]}}" href="/course/{{content[0][0]}}?task={{task[2]}}"
          style="width: {{content[0]['count']}}%;"></div>
        %end
        %end
      </div>
      <h3>{{title}}</h3>
      <p>{{!descr}}</p>
    </div>
    <div class="span7 sw-mode7">
      <div class="contianer-fluid">
        <div class="row">
          <div class="span7">
            <div id="editor">&#x000A;</div>
            <div class="alert alert-success hide done">
              <a class="close" data-dismiss="alert">×</a>
              <strong>Ура!</strong> Задание выполнено. <a href="#" onclick="location.reload()">Идём дальше</a>
            </div>
            <div class="row-fluid">
              <a href="#" style="font-size: 13px;" class="btn btn-success span4" onclick="return run();"><i
                  class="icon-play icon-white"></i> Выполнить</a>
              <a href="#" style="font-size: 13px;" rel="tooltip" data-placement="bottom"
                data-original-title="Выполнить выделенное. Можно выделить несколько регионов, зажав Ctrl"
                class="btn span4" onclick="return run(get_sel());"><i class="icon-resize-vertical"></i> Продолжить</a>
              <a href="#" style="font-size: 13px;" rel="tooltip" data-placement="bottom"
                data-original-title="Проверить значение выделенной переменной или выражения" class="btn btn-info span4"
                onclick="return run(window.editor.getCopyText(),'console');"><i
                  class="icon-eye-open icon-white"></i><span> Инспектировать</span></a>
            </div>
          </div>
          <div class="span7 sw-mode5">
            <div id="console" data-toggle="context" data-target=".context-menu"></div>
            <div class="context-menu">
              <ul class="dropdown-menu" role="menu">
                <li><a tabindex="1" href="#"
                    onclick="$('.jqconsole-old-prompt, .jqconsole-output').html(''); return false;">Очистить консоль</a>
                </li>
                <li><a tabindex="2" href="#" onclick="return open_win();">Показать вывод</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="span12 sw-mode-vis hide" style="margin-top:30px">
      <a href="#" class="pull-right" onclick="switch_mode();"><i class="icon-chevron-up"></i> На место</a>
      <h1>{{content[0]['title']}}</h1>
      <div class="progress indicator">
        %for task in tasks[content[0][0]]:
        %if task[1] is not None:
        <div class="bar {{task[1]}}" title="{{task[0]}}" href="/course/{{content[0][0]}}?task={{task[2]}}"
          style="width: {{content[0]['count']}}%;"></div>
        %end
        %end
      </div>
      <h3>{{title}}</h3>
      <p>{{!descr}}</p>
    </div>

  </div>
</div>
<script src="/assets/js/ace.js" type="text/javascript" charset="utf-8"></script>
<script src="/assets/js/bootstrap-contextmenu.js" type="text/javascript" charset="utf-8"></script>
<script src="/assets/js/jqconsole.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/assets/js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script>
  window.editor = ace.edit("editor");
  window.editor.setTheme("ace/theme/clouds");
  window.editor.getSession().setMode("ace/mode/python");
  if ($.cookie('saved{{content[0][0]}}') != null) window.editor.setValue($.cookie('saved{{content[0][0]}}'));
  window.editor.selection.clearSelection();
  function startPrompt() {
    window.jqconsole.Prompt(true, function (input) {
      window.jqconsole.Disable();
      $post('/console/run', { cmd: input, type: "console" }, function (data) {
        window.jqconsole.Enable();
        window.jqconsole.Focus();
        if (data == input && data != '')
          $('.done').show();
        else
          window.jqconsole.Write(data, 'jqconsole-output');
      });
      startPrompt();
    }, function (input) {  // Continue if the last character is a backslash.  
      if (/\\$/.test(input)) return 0;
      if (/:$/.test(input)) return window.jqconsole.GetIndentWidth();
      var lines = input.split('\n')
      var count = lines[lines.length - 1].match(/^ /g);
      if (count !== null && count.length > 0) return 0;
      return false;
    });
  };
  $(function () {
    window.$post = $.post;
    window.jqconsole = $('#console').jqconsole('', '>>>');
    window.jqconsole.SetIndentWidth(1);
    startPrompt();
  });
  function switch_mode() {
    $('.sw-mode-vis').toggle();
    $('.sw-mode7').toggleClass('span7 span12');
    $('.sw-mode5').toggleClass('span5 span7');

  }
  function get_sel() { // get selection or text from cursor to end
    r = window.editor.getSelectionRange();
    r.end.row = editor.session.getLength();

    return window.editor.getCopyText() || window.editor.session.getTextRange(r);
  }

  function open_win() {
    dow = window.open('');
    dow.document.write("<pre>" + $('.jqconsole-old-prompt, .jqconsole-output').text() + "</pre>");
    dow.document.write("<button onclick='window.close()'>Закрыть</button>");
    dow.focus();
  }
  function run(code, type) {
    code = code || window.editor.getValue();
    type = type || "program";
    $.cookie('saved{{content[0][0]}}', window.editor.getValue());
    window.jqconsole.Disable();
    $post('/console/run', { cmd: code + '\n', type: type }, function (data) {
      window.jqconsole.Enable();
      if (data == window.editor.getValue() + '\n' && data != '') {
        $('.done').show();
        window.jqconsole.Write(data, 'jqconsole-output');
      }
      else
        window.jqconsole.Write(data, 'jqconsole-output');
    });
  }
  $(function () {
    $('.indicator .bar').tooltip().click(function () { location.replace($(this).attr('href')); });
    $("a[href $= py]").click(function () {
      window.editor.setValue($.ajax({ url: encodeURI($(this).attr('href')), async: false }).responseText);
      window.editor.selection.moveCursorTo(0, 0);
      window.editor.selection.clearSelection();
      return false;
    });
  });
</script>

<script>
  //ace left the different ones, we need to replace with ones from require.js
  window.define = undefined;
  window.require = undefined;
</script>
<script src="/assets/sagejs/embedded_sagecell.js" type="text/javascript" charset="utf-8"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS_HTML"
  type="text/javascript"></script>

%rebase layout title='', path='/', is_user=True, is_admin=False