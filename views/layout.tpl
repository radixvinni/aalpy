<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Национальный исследовательский университет Московский Энергетический Институт">
    <title>{{title or 'Алгебраический процессор'}}</title>
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="/assets/css/default.css" rel="stylesheet">
    <link href="/assets/css/prettify.css" rel="stylesheet">
    <link href="/assets/css/ansi.css" rel="stylesheet">
    <link rel="shortcut icon" href="/assets/ico/favicon.ico">
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/prettify.js"></script>
  </head>
  <body data-spy="scroll" data-target=".sidebar" onload="prettyPrint()">
    <div class="navbar">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="/aal">Алгебраический процессор</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              %if is_user:
                <li 
                %if path=='/':
                class="active"
                %end
                ><a href="/">Практикум</a></li>
                <li
                %if path=='/authors':
                class="active"
                %end
                ><a href="/authors">Авторы</a></li>
                <li
                %if path=='/guide':
                class="active"
                %end
                ><a href="/guide">Руководство</a></li>
                <li
                %if path=='/help':
                class="active"
                %end
                ><a href="/help">Справка</a></li>
              %else:
                <li 
                %if path=='/login':
                class="active"
                %end
                ><a href="/login">Вход</a></li>
                <li
                %if path=='/authors':
                class="active"
                %end
                ><a href="/authors">Авторы</a></li>
              %end
            </ul>
            %if is_user:
            <ul class="nav pull-right">
              <li><a href="/logout">Выйти</a></li>
              <li class="divider-vertical"></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Настройки<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#changePass" data-toggle="modal">Сменить пароль</a></li>
                  <li><a href="/stats">Статистика</a></li>
                  <li><a href="/history">История</a></li>
                  <li class="divider"></li>
                  <li><a href="/admin">Администрирование</a></li>
                </ul>
              </li>
            </ul>
            %end
          </div>
        </div>
      </div>
    </div>
    %include
    <div class="modal hide form-horizontal" id="changePass" tabindex="-1" role="dialog" aria-labelledby="changePassTitle" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="changePassTitle">Смена пароля</h3>
      </div>
      <div class="modal-body">
        <div class="alert alert-error hide" id="wrongpass">
          <button type="button" class="close" data-dismiss="alert">×</button>
          <strong>Ошибка!</strong> Старый пароль не верен (по умолчанию пустой) или вы вышли.
        </div>
        <div class="alert hide" id="passdontmatch">
          <button type="button" class="close" data-dismiss="alert">×</button>
          <strong>Ой!</strong> Пароли не совпадают.
        </div>
        <div class="control-group">
          <label class="control-label" for="oldpass">Текущий пароль:</label>
          <div class="controls">
            <input type="password" id="oldpass" name="oldpass">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="newpass">Новый пароль:</label>
          <div class="controls">
            <input type="password" id="newpass" name="newpass">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="confirmpass">Ещё раз:</label>
          <div class="controls">
            <input type="password" id="confirmpass" name="confirmpass">
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Закрыть</button>
        <button class="btn btn-primary" id="changepass">Сменить пароль</button>
        <script type="text/javascript">
        $(function(){
          $('#changepass').unbind('click').click(function(){
            if($('#newpass').val()!=$('#confirmpass').val()){
              $('#passdontmatch').show();
              return;
            }
            $.post('/changepass',{oldpass:$('#oldpass').val(), newpass:$('#newpass').val()}, function(data) {
              if(data=='ok')
                $('#changepass').removeClass('btn-primary').addClass('btn-success').text('Успешно');
              else
                $('#wrongpass').show();
            });
          });
        });
        </script>
      </div>
    </div>
    <hr>
    <footer>
      <small class="muted">© Национальный Исследовательский Университет «Московский Энергетический Институт»</small>
    </footer>
  </body>
</html>
