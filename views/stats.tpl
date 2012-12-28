<div class="container">
  <div class="row">
    <div class="span6">
      <h1>Статистика</h1>
      <p>В настоящий момент нет данных для отображения.</p>
    </div>
    <pre class="span5 pull-right">
      Server health:
      %for item in content:
      {{item}}
      %end
    </pre>
  </div>
</div>

%rebase layout title='Статистика', path='', is_user=True, is_admin=False
