<div class="container">
  <h1>Пошаговые руководства</h1>
  <div class="alert">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <strong>Записать</strong> пошаговое руководство может только администратор. <a href="/guide/record">Начать запись.</a>
  </div>
  <div class="row">
      <div class="sections">
      %for item in content:
        <li class="span6">
          <h4><a href="/course/{{item[0]}}">{{item['title']}}</a></h4>
          <p>{{!item['descr']}}</p>
        </li>
      %end
      </ul>
  </div>
</div>
          
%rebase layout title='Практикум', path='/', is_user=True, is_admin=False
