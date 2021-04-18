<div class="container">
%if discipline is None:
  <h2>Дисциплины</h2>
  <div class="row">
      <div class="sections">
      %for item in sorted(set([x[4] or '' for x in courses])):
        <li class="span12">
          <h4><a href="/?discipline={{quote(item)}}">{{item or 'Не задано'}}</a></h4>
        </li>
      %end
    </div>
  </div>
%elif group is None:
  <h2><a href='/'>Дисциплины</a> &gt; {{discipline or 'Дисциплина не задана'}}</h2>
  <div class="row">
      <div class="sections">
      %for item in sorted(set([y or '' for x in courses for y in x[3].split(', ') if x[4] == discipline])):
        <li class="span12">
          <h4><a href="/?discipline={{quote(discipline)}}&group={{quote(item)}}">{{item or 'Не задано'}}</a></h4>
        </li>
      %end
    </div>
  </div>
%else:
  <h2><a href='/'>Дисциплины</a> &gt; <a href='/?discipline={{quote(discipline)}}'>{{discipline or 'Дисциплина не задана'}}</a> &gt; {{group or 'Группа не задана'}}</h2>
  <div class="row">
      <div class="sections">
      %if not content:
        <div class="alert alert-warning">
          <strong>Предупреждение.</strong> Отсутствуют работы с заданиями в данном разделе. Добавьте задания, чтобы работа появилась в списке.
        </div>
      %end
      
      %for item in content:
      %if item[0] in tasks:
        <li class="span6">
          <h4>{{item['title']}}</h4>
          <div class="progress indicator">
            %for task in tasks[item[0]]:
              %if task[1] is not None:
                <div class="bar {{task[1]}}" style="width: {{item['count']}}%;"><div title="{{task[0]}}" href="/course/{{item[0]}}?task={{task[2]}}" style="height:100%;"></div></div>
              %end
            %end
          </div>
          <p>{{!item['descr']}}</p>
        </li>
      %end
      %end
      
  </div>
</div>
<script>
  $(function() {$('.indicator .bar div').tooltip().click(function(){location.replace($(this).attr('href'));});});
</script>
%end
          
%rebase layout title='Практикум', path='/', is_user=True, is_admin=False
