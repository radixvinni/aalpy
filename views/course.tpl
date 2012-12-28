<div class="btn-toolbar">
   %include toolbar
</div>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="span5">
      <h1>{{content[0]['title']}}</h1>
      <div class="progress indicator">
        %for task in tasks[content[0][0]]:
          %if task[1] is not None:
            <div class="bar {{task[1]}}" title="{{task[0]}}" href="/course/{{content[0][0]}}?task={{task[2]}}" style="width: {{content[0]['count']}}%;"></div>
          %end
        %end
      </div>
      <h3>{{title}}</h3>
      <p>{{!descr}}</p>
    </div>
    <div class="span7">
      <div id="editor">&#x000A;</div>
      <div class="alert alert-success hide done">  
        <a class="close" data-dismiss="alert">×</a>  
        <strong>Ура!</strong> Задание выполнено. <a href="#" onclick="location.reload()">Идём дальше</a>  
      </div> 
      <button class="btn btn-success btn-block" type="button" onclick="return run();">Поехали</button>
      <div id="console"></div>
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
              window.jqconsole.Enable();
              window.jqconsole.Focus();
              if(data==input)
                $('.alert').show();
              else
                window.jqconsole.Write(data, 'jqconsole-output');
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
              window.jqconsole.Enable();
              if(data==window.editor.getValue()+'\n' && data != '') {
                $('.done').show();
                window.jqconsole.Write(data, 'jqconsole-output');
              }
              else
                window.jqconsole.Write(data, 'jqconsole-output');
      });
    }
</script>

<script>
  $(function() {$('.indicator .bar').tooltip().click(function(){location.replace($(this).attr('href'));});});
</script>

%rebase layout title='', path='/', is_user=True, is_admin=False
