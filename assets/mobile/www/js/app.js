// Dom7
var $$ = Dom7;
var username = null;

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
      username
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

// Login Screen Demo
$$('.login-screen-content .login-button').on('click', function () {
  app.input.validateInputs('.login-screen-content');
  
  var username = $$('.login-screen-content [name="username"]:valid').val();
  var password = $$('.login-screen-content [name="password"]:valid').val();
  var server = $$('.login-screen-content [name="url"]:valid').val() || 'http://mm.mpei.ac.ru:8080';

  app.preloader.show();
  $.ajax({
    type: "POST",
    url: server+"/login",
    data: {username, password},
    timeout: 1500,
    success: function(data, textStatus) {
        if (data.redirect) {
            // data.redirect contains the string URL to redirect to
            console.log('ok',data);
        }
        else {
            // data.form contains the HTML for the replacement form
            console.log('err',data);
        }
        app.preloader.hide();
    },
    error: function(data, textStatus) {
      app.dialog.alert(textStatus=="timeout"?"Сервер не отвечает.":"Ошибка при обращении к серверу.");
      app.preloader.hide();
    }
  });

  // Alert username and password
});
