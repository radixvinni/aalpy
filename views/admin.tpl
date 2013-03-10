<link rel="stylesheet" type="text/css" href="/assets/css/jquery.cleditor.css" />
<script type="text/javascript" src="/assets/js/jquery.cleditor.min.js"></script>
<div class="container">
  <div class="content">
    <form action="#" method="post">
    <div class="btn-toolbar">
      <div class="btn-group">
        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
          {{name=='users' and "Пользователи" or name=='courses' and "Работы" or name=='tasks' and "Задания"}}
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
          <li><a href="/admin/users">Пользователи</a></li>
          <li><a href="/admin/courses">Работы</a></li>
          <li><a href="/admin/tasks">Задания</a></li>
        </ul>
      </div>
      <button id="myEdit" type="button" class="btn"><i class="icon-pencil"></i> Изменить</button>
      <button id="myAdd" type="button" class="btn"><i class="icon-plus"></i> Добавить</button>
      <button type="submit" name="action" value="delete" id="myDelete" type="button" class="btn"><i class="icon-remove"></i> Удалить</button>
      
    </div>
    <div>
      <table class="table table-hover">
      <thead><tr>
        <th>#</th>
        %for i in dict(users=['Фамилия','Хэш пароля'],courses=['Название','Описание'],tasks=['Работа','Название','Описание','Результат'])[name]:
          <th>{{i}}</th>
        %end
        <th></th>
      </tr></thead>
      %for item in content:
        <tr>
          %for field in item:
            <td>
              <label for="radio_{{item[0]}}">{{field}}</label>
            </td>
          %end
          <td><input type="radio" name="id" id="radio_{{item[0]}}" value="{{item[0]}}"></td>
        </tr>
      %end
      </table>
    </div>
    </form>
    <form method="post" action="#" class="modal adminModal hide" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      %if name == 'users':
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 id="myModalLabel">Пользователь</h3>
        </div>
        <div class="modal-body">
          <input type="hidden" id="id" name="id" value="">
          <input type="hidden" id="pass" name="pass" value="">
          <div class="control-group">
            <label class="control-label" for="login">Фамилия</label>
            <div class="controls">
              <input type="text"  class="input-block-level" id="login" name="login">
            </div>
          </div>
          <div class="control-group" id="reset_cg">
            <label class="control-label" for="reset_pass">Сбросить пароль</label>
            <div class="controls">
              <input type="checkbox" id="reset_pass" name="reset_pass">
            </div>
          </div>
          <script type="text/javascript">
            $(function() {
              $('#myEdit').unbind('click').click(function() {
                $('#id').val($(':radio:checked').parent().parent().find("td:eq(0) label").text());
                $('#login').val($(':radio:checked').parent().parent().find("td:eq(1) label").text());
                $('#pass').val($(':radio:checked').parent().parent().find("td:eq(2) label").text());
                $('#reset_cg').show();
                $('#myModal').modal('show');
                $('#login').focus();
              });
              $('#myAdd').unbind('click').click(function() {
                $('#id').val("");
                $('#login').val("");
                $('#pass').val("");
                $('#reset_cg').hide();
                $('#myModal').modal('show');
                $('#login').focus();
              });
              $('#reset_pass').unbind('click').click(function() {
                if (this.checked){
                    $('#pass').val("");
                }
                else {
                    $('#pass').val($(':radio:checked').parent().parent().find("td:eq(2) label").text());
                }
                return true;
              });
            });
          </script>
        </div>
      %elif name == 'courses':
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 id="myModalLabel">Лабораторная работа</h3>
        </div>
        <div class="modal-body">
          <input type="hidden" id="id" name="id" value="">
          <div class="control-group">
            <label class="control-label" for="title">Название</label>
            <div class="controls">
              <input type="text" class="input-block-level" id="title" name="title">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="descr">Описание</label>
            <div class="controls">
              <textarea rows="5" type="text" id="descr" name="descr"></textarea>
            </div>
          </div>
          <script type="text/javascript">
            $(function() {
              $('#myEdit').unbind('click').click(function() {
                $('#id').val($(':radio:checked').parent().parent().find("td:eq(0) label").text());
                $('#title').val($(':radio:checked').parent().parent().find("td:eq(1) label").text());
                $('#descr').val($(':radio:checked').parent().parent().find("td:eq(2) label").text());
                $('#myModal').modal('show');
                window.editor = $('#descr').cleditor({width:600});
                $('#title').focus();
              });
              $('#myAdd').unbind('click').click(function() {
                $('#id').val("");
                $('#title').val("");
                $('#descr').val("");
                $('#myModal').modal('show');
                window.editor = $('#descr').cleditor({width:600});
                $('#title').focus();
              });
            });
          </script>
        </div>
      %elif name == 'tasks':
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 id="myModalLabel">Задание</h3>
        </div>
        <div class="modal-body">
          <input type="hidden" id="id" name="id" value="">
          <div class="control-group">
            <label class="control-label" for="title">Название</label>
            <div class="controls">
              <input type="text" class="input-block-level" id="title" name="title">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="cid">Связь с работой</label>
            <div class="controls">
              <!--input type="text" class="input-block-level" id="cid" name="cid"-->
              <select data-placeholder="Выберите раздел..." class="span5 select" name="cid" id="cid" >
              %for field in courses:
                <option value="{{field[0]}}">{{field[1]}}</option>
              %end
              </select>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="descr">Описание
            </label>
            <div class="btn-group">
                <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">Ссылка на файл <span class="caret"></span></button>
                <ul class="dropdown-menu">
                  %for kdoc, doc in docs.iteritems():
                  <li class="dropdown-submenu">
                    <a tabindex="-1" href="#">{{kdoc}}</a>
                    <ul class="dropdown-menu">
                      %for klab, lab in doc.iteritems():
                      %for file in lab:
                      <li><a tabindex="-1" href="#" onclick="window.editor[0].execCommand('createlink','/assets/doc/{{kdoc}}/{{klab}}/{{file}}',null,null)">{{file}}</a></li>
                      %end
                      <li class="divider"></li>
                      %end
                    </ul>
                  </li>
                  %end
                </ul>
            </div>
            <div class="btn-group">
                <a class="btn btn-mini" data-toggle="collapse" data-target=".formula">Формула <span class="caret"></span></a>
                <a class="btn btn-mini btn-primary" onclick="window.editor[0].execCommand('insertimage',$('#formula_i').attr('src'),null,null)">Вставить</a>    
            </div>
            <div class="btn-group">
                    <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">Формат <span class="caret"></span></button>
                  
                    <ul class="dropdown-menu ins_form">
                      <li><a href="#" title="\sqrt{x}">√</a></li>
                      <li><a href="#" title="\sqrt[n]{x}">∛</a></li>
                      <li><a href="#" title="x^n">x²</a></li>
                      <li><a href="#" title="x_n">x₂</a></li>
                      <li><a href="#" title="x_a^b">x₂²</a></li>
                      <li><a href="#" title="\frac{a}{b}">÷</a></li>
                      <li><a href="#" title="\lim_{x \to 0}">limit</a></li>
                      <li><a href="#" title="\sum_{a}^{b}">∑</a></li>
                      <li><a href="#" title="\int_{a}^{b}">∫</a></li>
                      <li><a href="#" title="\oint_{a}^{b}">∮</a></li>
                      <li><a href="#" title="\prod_{a}^{b}">∏</a></li>
                      <li><a href="#" title="\binom{n}{k}">binom</a></li>
                      <li><a href="#" title="\left( \right)">( )</a></li>
                      <li><a href="#" title="\left[ \right]">[ ]</a></li>
                      <li><a href="#" title="\lceil x \rceil">⌈ x ⌉</a></li>
                      <li><a href="#" title="\lfloor x \rfloor">⌊ x ⌋</a></li>
                      <li><a href="#" title="\left\{ \right\}">{ }</a></li>
                      <li><a href="#" title="\bigcup_{\alpha\in S}">⋃</a></li>
                      <li><a href="#" title="\bigcap_{\alpha\in S}">⋂</a></li>
                      <li><a href="#" title="\partial">∂</a></li>
                      <li><a href="#" title="\infty">∞</a></li>
                      <li><a href="#" title="\therefore">∴</a></li>
                      <li class="divider"></li>
                      <li><a href="#" title="\displaystyle">displaystyle</a></li>
                      <li><a href="#" title="\textstyle">textstyle</a></li>
                      <li><a href="#" title="\scriptstyle">scriptstyle</a></li>
                      <li><a href="#" title="\text{}">text</a></li>
                      <li><a href="#" title="\textbf{}">bold</a></li>
                      <li><a href="#" title="\textit{}">ital</a></li>
                      <li><a href="#" title="\textrm{}">roman</a></li>
                      <li><a href="#" title="{\color{red} }">R</a></li>
                      <li><a href="#" title="{\color{green} }">G</a></li>
                      <li><a href="#" title="{\color{blue} }">B</a></li>
                    </ul>
            </div>
            <div class="btn-group">
                    <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">Символ <span class="caret"></span></button>
                  
                    <ul class="dropdown-menu ins_form">
                    
                    <li><a href="#" title="\alpha">ɑ</a></li>
                    <li><a href="#" title="\beta">β</a></li>
                    <li><a href="#" title="\gamma">ɣ</a></li>
                    <li><a href="#" title="\delta">δ</a></li>
                    <li><a href="#" title="\epsilon">ϵ</a></li>
                    <li><a href="#" title="\varepsilon">ε</a></li>
                    <li><a href="#" title="\zeta">ζ</a></li>
                    <li><a href="#" title="\eta">η</a></li>
                    <li><a href="#" title="\theta">θ</a></li>
                    <li><a href="#" title="\vartheta">ϑ</a></li>
                    <li><a href="#" title="\iota">ι</a></li>
                    <li><a href="#" title="\kappa">κ</a></li>
                    <li><a href="#" title="\lambda">λ</a></li>
                    <li><a href="#" title="\mu">μ</a></li>
                    <li><a href="#" title="\nu">ν</a></li>
                    <li><a href="#" title="\xi">ξ</a></li>
                    <li><a href="#" title="\pi">π</a></li>
                    <li><a href="#" title="\varpi">ϖ</a></li>
                    <li><a href="#" title="\rho">ρ</a></li>
                    <li><a href="#" title="\varrho">ϱ</a></li>
                    <li><a href="#" title="\sigma">σ</a></li>
                    <li><a href="#" title="\varsigma">ς</a></li>
                    <li><a href="#" title="\tau">τ</a></li>
                    <li><a href="#" title="\upsilon">υ</a></li>
                    <li><a href="#" title="\phi">ϕ</a></li>
                    <li><a href="#" title="\varphi">φ</a></li>
                    <li><a href="#" title="\chi">χ</a></li>
                    <li><a href="#" title="\psi">ψ</a></li>
                    <li><a href="#" title="\omega">ω</a></li>
                  <li class="divider"></li>
                    <li><a href="#" title="\Gamma">Ɣ</a></li>
                    <li><a href="#" title="\Delta">Δ</a></li>
                    <li><a href="#" title="\Theta">Θ</a></li>
                    <li><a href="#" title="\Lambda">Λ</a></li>
                    <li><a href="#" title="\Xi">Ξ</a></li>
                    <li><a href="#" title="\Pi">Π</a></li>
                    <li><a href="#" title="\Sigma">Σ</a></li>
                    <li><a href="#" title="\Upsilon">Υ</a></li>
                    <li><a href="#" title="\Psi">Ψ</a></li>
                    <li><a href="#" title="\Omega">Ω</a></li>
                  
                    </ul>
            </div>
            <div class="btn-group">
                    <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">Пример <span class="caret"></span></button>
                  
                    <ul class="dropdown-menu ins2_form">
                      <li><a href="#" title="\begin{pmatrix}
 a_{11} & \cdots & a_{1n}\\ 
 \vdots & \ddots & \vdots\\ 
 a_{m1} & \cdots & a_{mn}
\end{pmatrix}">Матрица размера n на m</a></li>
                      <li><a href="#" title="\begin{bmatrix}a & b \\c & d \end{bmatrix}">Матрица размера 2 на 2</a></li>
                      <li><a href="#" title="1, x, x^2, \dots, x^n">Базис пространства многочленов</a></li>
                      <li><a href="#" title="\begin{array}{ll}
\displaystyle \binom{a}{p} = \begin{cases}
0  & {\text{if}}\ a=0 \mod p \\
1 & {\text{if}}\ a \ne 0 \mod p\ {\text{and}}\ x^2=a \mod p \\ 
-1 & {\text{else}} \\
\end{cases}
\end{array}">Символ Лежандра</a></li>
                      <li><a href="#" title="\frac{
 \begin{array}[b]{r}
   \left( x_1 x_2 \right)\\
   \times \left( x'_1 x'_2 \right)
 \end{array}
}{
 \left( y_1y_2y_3y_4 \right)
}
">Умножение столбиком</a></li>

 
                    </ul>
            </div>
            
            <div class="collapse formula">
                  <textarea rows="3" id="formula_t"></textarea>
                  <img id="formula_i" alt="formula"></img>
            </div>
            
          </div>
          <div class="controls">
              <textarea rows="5" type="text" id="descr" name="descr"></textarea>
          </div>
          <div class="control-group">
            <label class="control-label" for="goal">Ожидаемый результат</label>
            <div class="controls">
              <input type="hidden" id="goal" name="goal">
              <input type="text" class="input-block-level" id="newgoal" name="newgoal">
              <p class="help-block">Оставьте пустым чтобы сохранить текущее значение</p>
            </div>
          </div>
          <script type="text/javascript">
            $(function() {
              $('#formula_t').change(function(){
                    $('#formula_i').attr("src", "http://latex.codecogs.com/gif.latex?"+$(this).val()); 
              });
              $('.ins_form a').click(function(){
                    $('#formula_t').val($('#formula_t').val()+$(this).attr('title')).change().focus();
              });
              $('.ins2_form a').click(function(){
                    $('#formula_t').val($(this).attr('title')).change().focus();
              });
              $('#myEdit').unbind('click').click(function() {
                $('#id').val($(':radio:checked').parent().parent().find("td:eq(0) label").text());
                $('#cid').val($(':radio:checked').parent().parent().find("td:eq(1) label").text());
                $('#title').val($(':radio:checked').parent().parent().find("td:eq(2) label").text());
                $('#descr').val($(':radio:checked').parent().parent().find("td:eq(3) label").text());
                $('#goal').val($(':radio:checked').parent().parent().find("td:eq(4) label").text());
                $('#newgoal').val("");
                $('#myModal').modal('show');
                window.editor = $('#descr').cleditor({width:600});
                $('#title').focus();
                
              });
              $('#myAdd').unbind('click').click(function() {
                $('#id').val("");
                $('#cid').val("");
                $('#title').val("");
                $('#descr').val("");
                $('#goal').val("");
                $('#myModal').modal('show');
                window.editor = $('#descr').cleditor({width:600});
                $('#title').focus();
              });
            });
          </script>
        </div>
      %end
      <div class="modal-footer">
        <button type="submit" name="action" value="save" class="btn btn-primary">Сохранить</button>
        <button class="btn" data-dismiss="modal" aria-hidden="true">Закрыть</button>
      </div>
    </form>
  </div>
</div>
%rebase layout title='Администрирование', path='', is_user=True, is_admin=True
