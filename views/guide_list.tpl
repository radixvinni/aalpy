<div class="container">
  %if is_admin:
  <div class="alert">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    Руководства загружаются в каталог <strong>aal/notebooks</strong>. Вы можете <a href="/ipython/">перейти в ipython</a> или <a href="/guide/record">начать запись</a> анимации.   
  </div>
  %end
  <div>
    <h2>Руководства</h2>
    <ul>
      %for item in notebooks:
        <li>
          <span><a href="/notebook/{{item}}">{{item[:-6]}}</a></span>
        </li>
      %end
    </ul>
    <h2>Анимации</h2>
    <ul>
      %for item in content:
        <li>
          <span><a href="/guide/{{item[0]}}">{{item[2]}}</a></span>
        </li>
      %end
    </ul>
  </div>
          
%rebase layout title='Практикум', path='/guide', is_user=True, is_admin=False
