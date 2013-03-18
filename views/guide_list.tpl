<div class="container">
  <h1>Пошаговые руководства</h1>
  <div class="alert">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <strong>Записать</strong> пошаговое руководство может только администратор. <a href="/guide/record">Начать запись.</a>
  </div>
  <div>
      %for item in content:
        <li>
          <span><a href="/guide/{{item[0]}}">{{item[2]}}</a></span>
        </li>
      %end
      </ul>
  </div>
          
%rebase layout title='Практикум', path='/', is_user=True, is_admin=False
