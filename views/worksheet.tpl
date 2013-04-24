<div class="btn-toolbar">
   %include toolbar
</div>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="span7">
      <div id="editor" class="worksheet-editor">&#x000A;</div>
      <button class="btn btn-success btn-block" type="button" onclick="return run();">Поехали</button>
      
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
    function open_win()
    {
      dow=window.open('');
      dow.document.write("<pre>"+$('.jqconsole-old-prompt, .jqconsole-output').text()+"</pre>");
      dow.document.write("<button onclick='window.close()'>Закрыть</button>");
      dow.focus();
    }
    function run() {
      $.cookie('saved_ws', window.editor.getValue());
      window.jqconsole.Disable();
      $.post('/console/run', { cmd: window.editor.getValue()+'\n', type: "program" }, function(data) {
              window.jqconsole.Write(data, 'jqconsole-output');
              window.jqconsole.Enable();
      });
    }
</script>

<script>
  $(function() {$('.indicator .bar').tooltip().click(function(){location.replace($(this).attr('href'));});});
</script>

%rebase layout title='', path='/aal', is_user=True, is_admin=False
