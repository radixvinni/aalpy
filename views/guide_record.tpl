<div class="alert">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Записать начата.</strong> <!--Продолжительность: <span id="duration">0:0:0</span>.--> Количество действий: <span id="count">0</span>. <a href="#" id="finish">Завершить запись.</a>
</div>
<div id="record_success"></div>
<div class="btn-toolbar">
   %include toolbar
</div>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="span7">
      <div id="editor" class="worksheet-editor"></div>
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
  window.editor.selection.clearSelection();
  $(function () {
      window.$post = $.post;
      window.jqconsole = $('#console').jqconsole('', '>>>');
      window.jqconsole.SetIndentWidth(1);  
      var startPrompt = function () {
        window.jqconsole.Prompt(true, function (input) {
          window.jqconsole.Disable();
          $post('/console/run', { cmd: input, type: "console" }, function(data) {
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
      window.editor.focus();
  });
  var time_start = new Date().getTime();
  var time = [];
  var deltas = [];//window.editor.getSelection().doc.applyDeltas([]);
  var console = [];
  function run() {
    $.cookie('saved', window.editor.getValue());
    window.jqconsole.Disable();
    $post('/console/run', { cmd: window.editor.getValue()+'\n', type: "program" }, function(data) {
            window.jqconsole.Write(data, 'jqconsole-output');
            if(console[deltas.length])
              console[deltas.length] += data;
            else
              console[deltas.length] = data;
            window.jqconsole.Enable();
    });
  }
  $(function() {
    window.editor.getSession().on('change', function(e){
      time.push(new Date().getTime() - time_start);
      deltas.push(e.data);
      $('#count').text(deltas.length);
    });
    $('#finish').click(function(){
      $.post("/guide/save", { 'content': JSON.stringify({'time': time, 'deltas': deltas, 'console': console }) }, function(html){
        $('#record_success').html(html);
      });
    });
  });
</script>

%rebase layout title='', path='/guide', is_user=True, is_admin=False
