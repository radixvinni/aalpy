<div class="container">
  <h1>Практикум</h1>
  <p>Настоящий Практикум включает ряд разделов, соответствующих определенным темам. Каждый раздел содержит Теоретическое введение, одну или две лабораторные работы и, возможно, задания по одному или двум курсовым проектам.
  <br>Изучение каждого раздела практикума следует начинать с изучения Теоретического введения и Программных средств Алгебраического процессора в соответствии с разделом "Методические указания описаний лабораторных работ и курсовых проектов". При этом предполагается, что этой работе предшествовало ознакомление с содержанием страниц "Состав и назначение", а также "Общие указания".</p>
  <div class="row">
      <div class="sections">
      %for item in content:
        <li class="span6">
          <h4><a href="/course/{{item[0]}}">{{item['title']}}</a></h4>
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
      </ul>
  </div>
</div>

<script>
  $(function() {$('.indicator .bar div').tooltip().click(function(){location.replace($(this).attr('href'));});});
</script>
          
%rebase layout title='Практикум', path='/', is_user=True, is_admin=False
