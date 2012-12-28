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
      <div id="console" class="worksheet-console"></div>
    </div>
  </div>
</div>
<script src="/assets/js/ace.js" type="text/javascript" charset="utf-8"></script>
<script src="/assets/js/jqconsole.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/assets/js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script>
    window.editor = ace.edit("editor");
    window.editor.setTheme("ace/theme/clouds");
    window.editor.getSession().setMode("ace/mode/python");
    if($.cookie('saved')!=null) window.editor.setValue($.cookie('saved'));
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
    function run() {
      $.cookie('saved', window.editor.getValue());
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
