<link rel="stylesheet" type="text/css" href="/assets/css/jquery.cleditor.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/jquery.editable-select.css" />
<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
<script type="text/javascript" src="/assets/js/jquery.editable-select.js"></script>
<script type="text/javascript" src="/assets/js/jquery.cleditor.min.js"></script>
<script type="text/javascript" src="/assets/js/knockout.min.js"></script>
<div class="container">
 <div class="row">
  <div class="span3">
  	    <div class="well">
		    <ul class="nav nav-list"> 
		      <li class="nav-header">Администрирование</li>        
		      <li {{'class=active' if name=='users' else ''}}><a href="/admin/users"><i class="icon-user"></i> Пользователи</a></li>
          <li {{'class=active' if name=='courses' else ''}}><a href="/admin/courses"><i class="icon-book"></i> Работы</a></li>
          <li {{'class=active' if name=='tasks' else ''}}><a href="/admin/tasks"><i class="icon-book"></i> Задания</a></li>
		      <li {{'class=active' if name=='guide' else ''}}><a href="/admin/guide"><i class="icon-play"></i> Руководства</a></li>
          <!--li class="divider"></li-->
		      
		    </ul>
	    </div>

  </div>
  <div class="span9">
    <h2>{{name=='users' and "Пользователи" or name=='courses' and "Работы" or name=='tasks' and "Задания" or "Руководства"}}</h2>
    <div>
      %if name == 'users':
      <!-- ko foreach: content -->
      <a href="#" class="span4 thumbnail userbox" data-bind="click: $root.editing">
	      <div class="row">
		      <div class="span1"><img src="/assets/img/user_male.png" alt=""></div>
		      <div class="span3">
			      <p data-bind="text: $data[1]"></p>
                	<p><strong></strong></p>
			      <!--span class=" badge badge-warning">8 messages</span> <span class=" badge badge-info">15 followers</span-->
		      </div>
	      </div>
      </a>
      <!-- /ko -->
      <!-- ko ifnot: edit -->
      <a href="#" class="span4 thumbnail user_add" data-bind="click: $root.creating" style="text-decoration:none">
	      <span>+</span>
      </a>
      <!-- /ko -->
      %elif name == 'courses':
      <!-- ko ifnot: edit -->
        <div class="btn-group">
          <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
            Дисциплина <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            <li><a tabindex="-1" href="#" data-bind="click: function() {$root.filter_dsc(null)}">Все</a></li>
                %for field in sorted(set([x[4] or '' for x in courses])):
                  <li data-bind="css: {disabled: current_dsc() == '{{field}}'}"><a tabindex="-1" href="#" data-bind="click: function() {$root.filter_dsc('{{field}}')}">{{field or 'Не задано'}}</a></li>
                %end
          </ul>
        </div>
        <div class="btn-group">
          <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
            Номер группы <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            <li><a tabindex="-1" href="#" data-bind="click: function()  {$root.filter_grp(null)}">Все</a></li>
                %for field in sorted(set([y or '' for x in courses for y in x[3].split(', ')])):
                  <li data-bind="css: {disabled: current_grp() == '{{field}}'}"><a tabindex="-1" href="#" data-bind="click: function() {$root.filter_grp('{{field}}')}">{{field or 'Не задано'}}</a></li>
                %end
          </ul>
        </div>
        <div class='clear'></div>
      <!-- /ko -->
      <!-- ko foreach: content -->
      <div class="span4" data-bind="click: $root.editing">
        <hr>
	      <h4><a href="" data-bind="text: $data[1]"></a></h4>
        <p data-bind="html: $data[2]"></p>
			</div>
      <!-- /ko -->
      <!-- ko ifnot: edit -->
      <a href="#" class="span4 thumbnail well course_add" data-bind="click: $root.creating" style="text-decoration:none">
	      <span>+</span>
      </a>
      <!-- /ko -->
      %elif name == 'tasks':
      <!-- ko ifnot: edit -->
        <a href="#" class="btn" data-bind="click: $root.creating">Добавить</a>
        <div class="btn-group">
          <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
            Работа <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            <li><a tabindex="-1" href="#" data-bind="click: function() {$root.filter_dsc(null)}">Все</a></li>
                %for field in (courses):
                  <li data-bind="css: {disabled: current_dsc() == {{field[0]}}}"><a tabindex="-1" href="#" data-bind="click: function() {$root.filter_dsc({{field[0]}})}">{{field[1] or 'Не задано'}}</a></li>
                %end
          </ul>
        </div>
        
      <!-- /ko -->
      <!-- ko foreach: content -->
      <hr>
      <!-- ko foreach: $data[1] -->
      <div class="" data-bind="click: $root.editing">
        <h4><a href="" data-bind="text: $data[0]"></a></h4>
        <p data-bind="html: $data[3]"></p>
			  
      </div>
      <!-- /ko -->
      <!-- /ko -->
      %elif name == 'guide':
      <ul>
      <!-- ko foreach: content -->
        <li><a href="#" data-bind="click: $root.editing, text: $data[2]"></a></li>
      <!-- /ko -->
      </ul>
      %end
    </div>
    <form method="post" action="#" data-bind="with: edit">
      %if name == 'users':
        <div class="modal-body">
          <input type="hidden" id="id" name="id" data-bind="value: $data[0]" />
          <input type="hidden" id="pass" name="pass" data-bind="value: $data[2]" />
          <div class="control-group">
            <label class="control-label" for="login">Фамилия</label>
            <div class="controls">
              <input type="text"  class="input-block-level" id="login" name="login" data-bind="value: $data[1]" />
            </div>
          </div>
          <div class="control-group" id="reset_cg">
            <label class="control-label" for="reset_pass">Сбросить пароль</label>
            <div class="controls">
              <input type="checkbox" id="reset_pass" name="reset_pass">
            </div>
          </div>
        </div>
      %elif name == 'guide':
          <input type="hidden" id="id" name="id" data-bind="value: $data[0]">
          <input type="hidden" id="id" name="uid" data-bind="value: $data[1]">
          <div class="control-group">
            <label class="control-label" for="title">Название</label>
            <div class="controls">
              <input type="text" class="input-block-level" id="title" name="name" data-bind="value: $data[2]">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="content">Содержимое</label>
            <div class="controls">
              <textarea rows="5" id="content" name="content" data-bind="value: $data[3]"></textarea>
            </div>
          </div>
      %else:
      %if name == 'courses':
          <input type="hidden" id="id" name="id" data-bind="value: $data[0]">
          <div class="control-group">
            <label class="control-label" for="title">Название</label>
            <div class="controls">
              <input type="text" class="input-block-level" id="title" name="title" data-bind="value: $data[1]">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="title">Дисциплина</label>
            <div class="controls">
              <select class='select2' id='discipline' name='discipline' data-bind="value: $data[4]">
                %for field in sorted(set([''] + [x[4] or '' for x in courses])):
                  <option value="{{field}}">{{field}}</option>
                %end
              </select>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="title">Номер группы</label>
            <div class="controls">
              <select class='select3' id='grp' name='grp' data-bind="selectedOptions: $root.edit_grp()" multiple="multiple">
                %for field in sorted(set([''] + [y or '' for x in courses for y in x[3].split(', ')])):
                  <option>{{field}}</option>
                %end
              </select>
            </div>
          </div>
      %elif name == 'tasks':
          <input type="hidden" id="id" name="id" data-bind="value: $data[2]">
          <input type="hidden" id="goal" name="goal" data-bind="value: $data[4]">
          <div class="control-group">
            <label class="control-label" for="title">Название (уникальное)</label>
            <div class="controls">
              <input type="text" class="input-block-level" id="title" name="title" data-bind="value: $data[0]">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="cid">Связь с работой</label>
            <div class="controls">
              <!--input type="text" class="input-block-level" id="cid" name="cid"-->
              <select data-placeholder="Выберите раздел..." class="span5 select" name="cid" id="cid" data-bind="value: $data[5]">
              %for field in courses:
                <option value="{{field[0]}}">{{field[1]}}</option>
              %end
              </select>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="goal">Ожидаемый результат</label>
            <div class="controls">
              <input type="hidden" id="goal" name="goal">
              <input type="text" class="input-block-level" id="newgoal" name="newgoal">
              <p class="help-block">Оставьте пустым чтобы сохранить текущее значение</p>
            </div>
          </div>
      %end
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
              <textarea rows="5" type="text" id="descr" name="descr" data-bind="value: $data[{{2 if name=='courses' else 3}}]"></textarea>
          </div>
          <script type="text/javascript">
            function renew_editor() {
              $('#formula_t').change(function(){
					$('.formula').collapse('show');
                    $('#formula_i').attr("src", "http://latex.codecogs.com/gif.latex?"+$(this).val()); 
              });
              $('.ins_form a').click(function(event){
					event.preventDefault();
					$('.formula').collapse('show');
                    $('#formula_t').val($('#formula_t').val()+$(this).attr('title')).change().focus();
              });
              $('.ins2_form a').click(function(event){
					event.preventDefault();
					$('.formula').collapse('show');
                    $('#formula_t').val($(this).attr('title')).change().focus();
              });
              window.editor = $('#descr').cleditor({width:600});
            }
          </script>
      %end
      <div class="modal-footer">
        <button type="submit" name="action" value="save" class="btn btn-primary">Сохранить</button>
        <button type="submit" name="action" value="delete" class="btn btn-danger" 
        onclick="return confirm('Вы действительно хотите удалить {{name=='users' and "этого пользователя" or name=='courses' and "эту работу" or name=='tasks' and "это задание" or "это руководство"}}?')">Удалить</button>
        <button class="btn">Вернуться</button>
      </div>
    </form>
  </div>
 </div>
</div>
<script>
  function renew_select2() { 
    var grp = $('#grp').val();
    var dsc = $('#discipline').val();
    $('.select2').editableSelect({effects: 'slide'});
    $('.select3').select2({tags:[]});
    //$('#grp').val(grp);
    $('#discipline').val(dsc);
  }
  function Admin() {
    var self = this;
    var content = {{!content}};
    var name = '{{name}}';
    self.content = ko.observable(content);
    self.edit = ko.observable();
    self.current_grp = ko.observable(null);
    self.current_dsc = ko.observable(null);
    self.editing = function(user) { self.content([]);self.edit(user);renew_editor();renew_select2(); };
    self.creating = function(user) { self.content([]);self.edit([,,,'']); renew_editor();renew_select2(); };
    self.filter_grp = function(x) { self.current_grp(x);self.content(self.filterContent()); }
    self.filter_dsc = function(x) { self.current_dsc(x);self.content(self.filterContent()); }
    //self.listing = function(user) { self.content(content);self.edit(); };
    self.edit_grp = (function() {
        return (self.edit()||[0,1,2,'3'])[3].split(', ');
    });
    var filterCourses = (function() {
        if(self.current_grp()===null && self.current_dsc()===null) {
            return content; 
        } else {
            return content.filter(function(itm) {
                return (self.current_grp()===null || itm[3].indexOf(self.current_grp()) >= 0) && 
                  (self.current_dsc()===null || itm[4] == self.current_dsc());
            });
        }
    });
    var filterTasks = function () {
      if(self.current_dsc()===null) {
            return content; 
        } else {
            return content.filter(function(itm) {
                return (self.current_dsc()===null || itm[0] == self.current_dsc());
            });
        }
    }
    var filterContent = function () {return content}
    self.filterContent = name == 'courses'?filterCourses:name=='tasks'?filterTasks:filterContent;
  }
  ko.applyBindings(new Admin());
</script>
   
%rebase layout title='Администрирование', path='', is_user=True, is_admin=True
