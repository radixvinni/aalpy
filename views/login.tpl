<img src="/assets/img/mpei_logo.jpg" class="mpeiLogo">
<div class="span7 login">
  <form class="form-horizontal" action="#" method="post">
    <legend>Вход в дистанционную версию Алгебраического Процессора</legend>
    %if error:
      <div class="alert alert-error">
        <button type="button" class="close" data-dismiss="alert">×</button>
        %if error=='admin':
        <strong>Доступ запрещен!</strong> У вас нет разрешения на доступ к данному разделу.
        %elif error=='wrong':
        <strong>Ошибка!</strong> Праверьте правильность ввода пароля(регистр, язык).
        %end
      </div>
    %end
    <div class="control-group">
      <label class="control-label" for="username">Фамилия:</label>
      <div class="controls">
        <input type="text" id="username" name="username" value="{{username or ''}}">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="password">Пароль:</label>
      <div class="controls">
        <input type="password" id="password" name="password" placeholder="не менее 6 знаков">
      </div>
    </div>
    <div class="control-group">
      <div class="controls">
        <button type="submit" class="btn">Вход</button>
      </div>
    </div>
  </form>
</div>
%rebase layout title='Вход в Алгебраический процессор МЭИ', path='/login', is_user=is_user, is_admin=False
