// Dom7
var $$ = Dom7;
// Framework7 App main instance
var app  = new Framework7({
  root: '#app', // App root element
  id: 'ru.ac.mpei.mm.aal', // App bundle ID
  version: '1.0.0',
  name: 'MPEI AAL', // App name
  theme: 'auto', // Automatic theme detection
  // App root data
  data: function () {
    return {
    };
  },
  sheet: {
    closeByOutsideClick: true,
    backdrop: true,
  },
  // App root methods
  methods: {
    runWorkspace: function () {
      if (!document.cookie || document.cookie.length < 40) return app.router.navigate('/');
      var code = Blockly.Python.workspaceToCode(app.workspace);
      
      $('#results').append('\n======== начало исходного кода ========\n');
      $('#results').append(code);
      $('#results').append('\n======== конец исходного кода ========\n');
      $("#results").scrollTop($("#results")[0].scrollHeight);

      $.post(app.server+'/console/run', { cmd: code+'\n', type: "program" }, function(data) {
        $('#results').append(data);
        $("#results").scrollTop($("#results")[0].scrollHeight);
      });
    },
  },
  // App routes
  routes,
  // Enable panel left visibility breakpoint
  panel: {
    leftBreakpoint: 960,
  },
});

//Left menu change password button clicked
$$('.login-screen-content .chpass-button').on('click', function () {
  app.input.validateInputs('.login-screen-content');
  var oldpass = $$('.login-screen-content [name="oldpass"]:valid').val();
  var newpass = $$('.login-screen-content [name="newpass"]:valid').val();
  var newpass2 = $$('.login-screen-content [name="newpass2"]:valid').val();
  if (newpass!==newpass2) return app.dialog.alert("Пароли не совпадают.");
  app.preloader.show();
  $.ajax({
    type: "POST",
    url: app.server+"/changepass",
    data: {oldpass, newpass},
    timeout: 1500,
    success: function(data) {
      if (data=='ok') app.popup.close('#chpass-popup');
      if (data=='wrong pass') app.dialog.alert("Старый пароль введён неверно.");
      if (data=='no session') app.dialog.alert("Ваша сессия не найдена на сервере. Выйдите и войдите заново.");
      app.preloader.hide();
    },
    error: function(data, textStatus) {
      app.dialog.alert(textStatus=="timeout"?"Сервер не отвечает.":"Ошибка при обращении к серверу.");
      app.preloader.hide();
    }
  });
  
});
//left menu logout button clicked
$$('.view-left #logout').on('click', function () {
  app.preloader.show();
  $.ajax({
    type: "GET",
    url: app.server+"/logout",
    timeout: 1500,
    success: function(data) {
      //document.cookie = 'session=; expires=Thu, 01 Jan 1970 00:00:01 GMT;'
      app.router.navigate('/');
      app.preloader.hide();
    },
    error: function(data, textStatus) {
      app.dialog.alert(textStatus=="timeout"?"Сервер не отвечает.":"Ошибка при обращении к серверу.");
      app.preloader.hide();
    }
  });
});
Blockly.Python.text_print = function (a){return"print "+(Blockly.Python.valueToCode(a,"TEXT",Blockly.Python.ORDER_NONE)||"''")+"\n"}