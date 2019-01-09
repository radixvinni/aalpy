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
  // App root methods
  methods: {
    helloWorld: function () {
      app.dialog.alert('Hello World!');
    },
  },
  // App routes
  routes: routes,
  // Enable panel left visibility breakpoint
  panel: {
    leftBreakpoint: 960,
  },
});

// Init/Create left panel view
var mainView = app.views.create('.view-left', {
  url: '/'
});

// Init/Create main view
var mainView = app.views.create('.view-main', {
  url: '/'
});

// Restore saved login settings
var server;

//Left menu item clicked
$$('.login-screen-content .chpass-button').on('click', function () {
  app.input.validateInputs('.login-screen-content');
  var oldpass = $$('.login-screen-content [name="oldpass"]:valid').val();
  var newpass = $$('.login-screen-content [name="newpass"]:valid').val();
  var newpass2 = $$('.login-screen-content [name="newpass2"]:valid').val();
  if (newpass!==newpass2) return app.dialog.alert("Пароли не совпадают.");
  app.preloader.show();
  $.ajax({
    type: "POST",
    url: server+"/changepass",
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
$$('.view-left #logout').on('click', function () {
  app.preloader.show();
  $.ajax({
    type: "GET",
    url: server+"/logout",
    timeout: 1500,
    success: function(data) {
      console.log('cookie', document.cookie);
      document.cookie = 'session=; expires=Thu, 01 Jan 1970 00:00:01 GMT;'
      app.router.navigate('/');
      app.preloader.hide();
    },
    error: function(data, textStatus) {
      app.dialog.alert(textStatus=="timeout"?"Сервер не отвечает.":"Ошибка при обращении к серверу.");
      app.preloader.hide();
    }
  });
});
