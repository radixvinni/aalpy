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
<script src="https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS_HTML"type="text/javascript">
</script>
<script type="text/javascript">
init_mathjax = function() {
    if (window.MathJax) {
        // MathJax loaded
        MathJax.Hub.Config({
            tex2jax: {
                inlineMath: [ ['$','$'], ["\\(","\\)"] ],
                displayMath: [ ['$$','$$'], ["\\[","\\]"] ]
            },
            displayAlign: 'left', // Change this to 'center' to center equations.
            "HTML-CSS": {
                styles: {'.MathJax_Display': {"margin": 0}}
            }
        });
        MathJax.Hub.Queue(["Typeset",MathJax.Hub]);
    }
}
init_mathjax();
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
