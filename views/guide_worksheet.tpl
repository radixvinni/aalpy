<div class="slider-toolbar">
  <div class="btn-group" data-toggle="buttons-radio">
    <!--a href="#" class="btn"><i class="icon-white icon-fast-backward"></i></a-->
    <a href="#" class="btn play active" onclick="play()"><i class="icon-play"></i></a>
    <a href="#" class="btn pause" onclick="pause()"><i class="icon-pause"></i></a>
    <a href="#" class="btn forward" onclick="forward()"><i class="icon-fast-forward"></i></a>
  </div>
  <span style="vertical-align: middle;margin:10px;">Скорость:</span>
  <div class="btn-group" data-toggle="buttons-radio">
    <button type="button" class="btn active" onclick="interval(100)">1x</button>
    <button type="button" class="btn" onclick="interval(50)">2x</button>
    <button type="button" class="btn" onclick="interval(20)">5x</button>
    <button type="button" class="btn" onclick="interval(10)">10x</button>
  </div>
  <span style="vertical-align: middle;margin:10px;">Прогресс:</span>
  <input type="text" class="slider span2" value="1" data-slider-min="0" data-slider-step="1" data-slider-value="1" data-slider-tooltip="show"></input>
 
  <!--span style="vertical-align: middle;margin:10px;">Поиск:</span>
  <div class="btn-group">
    <a href="#" class="btn"><i class="icon-backward"></i></a>
    <a href="#" class="btn"><i class="icon-forward"></i></a>
  </div-->
  <!--div class="pull-right">
  <span style="vertical-align: middle;margin:10px;">Режим:</span>
  <div class="btn-group" data-toggle="buttons-radio">
    <a href="#" class="btn active"><i class="icon-facetime-video"></i></a>
    <a href="#" class="btn"><i class="icon-edit"></i></a>
  </div>
  </div-->
</div>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="span7">
      <div id="editor" class="worksheet-editor">&#x000A;</div>
      <button class="btn disabled btn-block" type="button" onclick="return run();">Поехали</button>
      
    </div>
    <div class="span5">
      <pre id="console" style="height:400px;overflow-y: auto;"></pre>
    </div>
  </div>
</div>
<script src="/assets/js/ace.js" type="text/javascript" charset="utf-8"></script>
<script src="/assets/js/jqconsole.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/assets/js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script>
    var $obj = {{!content[3]}};
    var $max_slide = $obj.time.length;
    //---------------------------------------------
    var slider = $('.slider').slider({'max':$max_slide})
      .on('slideStart',pause)
      .on('slide', function(ev){set_slide(slider.getValue())})
      .data('slider');
    window.editor = ace.edit("editor");
    window.editor.setTheme("ace/theme/clouds");
    window.editor.getSession().setMode("ace/mode/python");
    window.editor.setReadOnly(true);
    var $loop = null;
    var $speed = 100;
    var $interval = 100;
    var $slide = 0;
    var $counter = 0;
    play();
    //timer control
    function play() {
      clearInterval($loop);
      $loop = setInterval(loop, $interval);
    }
    function interval(intr) {
      $interval = intr;
      if ($('.play').hasClass('active')) play();
    }
    function loop() {
      apply_deltas($counter*$speed);
      slider.setValue($slide);
      if($max_slide==$slide) forward();
      $counter++;
    }
    function pause() {
      $('.pause').button('toggle');
      clearInterval($loop);
    }
    function forward() {
      $('.forward').button('toggle');
      clearInterval($loop);
      set_slide($max_slide);
    }
    //apply changes to editor and console
    function apply_deltas(time) {
      var deltas = []
      for(;$obj.time[$slide]<time;$slide++)
        deltas.push($obj.deltas[$slide]);
      if (deltas.length > 0) {
        window.editor.getSelection().doc.applyDeltas(deltas);
        var cur = deltas.pop().range.end;
        window.editor.moveCursorTo(cur.row,cur.column);
        $('#console').html($obj.console.slice(0,$slide+1).join(''));
      }
    }
    //set slide to editor and console
    function set_slide(slide) {
      window.editor.setValue();
      window.editor.getSelection().doc.applyDeltas($obj.deltas.slice(0,slide));
      $slide = slide;
      $counter = $obj.time[slide]/$speed;
      
      $('#console').html($obj.console.slice(0,slide+1).join(''));
    }
</script>

%rebase layout title='', path='/guide', is_user=True, is_admin=False
