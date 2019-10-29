<link href="/assets/css/ipython.min.css" rel="stylesheet">
<link href="/assets/css/pygments.css" rel="stylesheet">
<style type="text/css" >
.imgwrap {
    text-align: center;
}
.input_area{
    padding: 0.4em;
}
div.input_area > div.highlight > pre {
    margin: 0px;
    padding: 0px;
    border: none;
}
</style>
<script type="text/javascript">
function run(code, output, type) {
      type = type || "console";
      
      $.post('/console/run', { cmd: code+'\n', type: type }, function(data) {
              output.text(data);
      });
    }
function add_run_cell(input, output) {
    var btn = $('<a href="#" class="btn btn-small pull-right"><i class="icon-repeat"></i></a>');
    btn.click(function(){
        run(input.text(),output);
        return false;
    });
    input.prepend(btn);
}
$(function(){
    $('.code_cell').each(function(){
        var output = $(this).find('.output_subarea pre');
        if(!output.length) output = $('.common_output');
        add_run_cell($(this).find('.input_area'),output);
    });
});
</script>
    

{{!content}}          
<pre class="common_output hide"></pre>
%rebase layout title='Практикум', path='/guide', is_user=True, is_admin=False
