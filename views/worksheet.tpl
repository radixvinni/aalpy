<div class="btn-toolbar">
   %include toolbar
</div>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="span7">
      <div id="editor" class="worksheet-editor">&#x000A;</div>
      <div class="row-fluid">
        <a href="#" style="font-size: 13px;" class="btn btn-success span4" onclick="return run();"><i class="icon-play icon-white"></i> Выполнить</a>
        <a href="#" style="font-size: 13px;" rel="tooltip" data-placement="bottom" data-original-title="Выполнить выделенное. Можно выделить несколько регионов, зажав Ctrl" class="btn span4" onclick="return run(get_sel());"><i class="icon-resize-vertical"></i> Продолжить</a>
        <a href="#" style="font-size: 13px;" rel="tooltip" data-placement="bottom" data-original-title="Проверить значение выделенной переменной или выражения" class="btn btn-info span4" onclick="return run(get_sel(),'console');"><i class="icon-eye-open icon-white"></i><span> Инспектировать</span></a>
      </div>
    </div>
    <div class="span5">
      <div id="console" class="worksheet-console" data-toggle="context" data-target=".context-menu"></div>
      <div class="context-menu">
      <ul class="dropdown-menu" role="menu">
        <li><a tabindex="1" href="#" onclick="$('.jqconsole-old-prompt, .jqconsole-output').html(''); return false;">Очистить консоль</a></li>
        <li><a tabindex="2" href="#" onclick="return open_win();">Показать вывод</a></li>
      </ul>
      </div>
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
    if($.cookie('saved_ws')!=null) window.editor.setValue($.cookie('saved_ws'));
    window.editor.selection.clearSelection();
    $(function () {
        window.jqconsole = $('#console').jqconsole('', '>>>');
        window.jqconsole.SetIndentWidth(1);  
        var startPrompt = function () {
          window.jqconsole.Prompt(true, function (input) {
            window.jqconsole.Disable();
            $.post('/console/run', { cmd: input, type: "console" }, function(data) {
              window.jqconsole.Write(data, 'jqconsole-output');
              window.jqconsole.Enable();
              window.jqconsole.Focus();
            });
            startPrompt();
          }, function (input) {  // Continue if the last character is a backslash.  
            if (/\\$/.test(input)) return 0;
            if (/:$/.test(input)) return window.jqconsole.GetIndentWidth();
            var lines = input.split('\n')
            var count = lines[lines.length - 1].match(/^ /g);
            if(count!==null && count.length>0) return 0;
            return false;
          });
        };
        startPrompt();
    });
    function get_sel() { // get selection or text from cursor to end 
      r=window.editor.getSelectionRange();
      r.end.row = editor.session.getLength();
      
      return window.editor.getCopyText() || window.editor.session.getTextRange(r);
    }
    function open_win()
    {
      dow=window.open('');
      dow.document.write("<pre>"+$('.jqconsole-old-prompt, .jqconsole-output').text()+"</pre>");
      dow.document.write("<button onclick='window.close()'>Закрыть</button>");
      dow.focus();
    }
    function run(code, type) {
      code = code || window.editor.getValue();
      type = type || "program";
      $.cookie('saved_ws', window.editor.getValue());
      window.jqconsole.Disable();
      $.post('/console/run', { cmd: code+'\n', type: type }, function(data) {
              window.jqconsole.Write(data, 'jqconsole-output');
              window.jqconsole.Enable();
      });
    }
</script>

<script>
  $(function() {
    $('.indicator .bar').tooltip().click(function(){location.replace($(this).attr('href'));});
    $("[rel=tooltip]").tooltip({html:true});
    });
</script>

%rebase layout title='', path='/aal', is_user=True, is_admin=False
