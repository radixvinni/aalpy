<div class="container">
  <div class="row">
    <div class="span8">
      <h1>История</h1>
      <table class="table table-condensed">
      <tr>
        <th>Дата и время</th>
        <th>Команда</th>
        <th>Результат</th>
      </tr>
      %for item in content:
      <tr>
        <td>
          <i class="icon-calendar"></i>{{item[5]}} 
          <i class="icon-time"></i>{{item[6]}}
          %if len(item)>7:
            <i class="icon-user"></i>{{item[7]}}
          %end
        </td>
        <td><pre class="prettyprint">{{item[3]}}</pre></td>
        <td><pre class="prettyprint">{{item[4]}}</pre></td>
      </tr>
      %end
      </table>
    </div>
    <div class="span4">
	    <div class="filterHistory well">
		    <ul class="nav nav-list"> 
		      <li class="nav-header">Фильтры</li>        
		      <li {{'class=active' if f==1 else ''}}><a href="/history/today"><i class="icon-home"></i> За сегодня</a></li>
          <li {{'class=active' if f==2 else ''}}><a href="/history/week"><i class="icon-calendar"></i> На этой неделе</a></li>
          <li {{'class=active' if f==3 else ''}}><a href="/history/month"><i class="icon-calendar"></i> За этот месяц</a></li>
		      <li {{'class=active' if f==4 else ''}}><a href="/history/users"><i class="icon-user"></i> По пользователям</a></li>
          <li class="divider"></li>
		      <li><a href="#" rel="popover" data-placement="left" data-content="Вы действительно хотите удалить всю историю? <a href='/history/delete' class='btn'>Да</a>" data-original-title="Очистить историю"><i class="icon-trash"></i> Очистить</a></li>
		      <script type="text/javascript">
              $("[rel=popover]").popover();
          </script>
		    </ul>
	    </div>
    </div>
  </div>
</div>

%rebase layout title='История', path='', is_user=True, is_admin=False
