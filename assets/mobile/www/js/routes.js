routes = [
  {
    path: '/',
    url: './index.html',
    on:{
      pageInit: function() {
        $$('.login-screen-content [name="username"]').val(window.localStorage.getItem("username") || '');
        $$('.login-screen-content [name="password"]').val(window.localStorage.getItem("password") || '');
        $$('.login-screen-content [name="url"]').val(window.localStorage.getItem("url") || '');

        // Login Button clicked
        $$('.login-screen-content .login-button').on('click', function () {
          console.log(server);
          app.input.validateInputs('.login-screen-content');

          var save = $$('.login-screen-content #save:checked').val();
          var username = $$('.login-screen-content [name="username"]:valid').val();
          var password = $$('.login-screen-content [name="password"]:valid').val();
          server = $$('.login-screen-content [name="url"]:valid').val() || 'http://mm.mpei.ac.ru:8080';
          window.localStorage.setItem("url", server);
          window.localStorage.setItem("username", username);
          if (save) window.localStorage.setItem("password", password);
          
          app.preloader.show();
          $.ajax({
            type: "POST",
            url: server+"/login",
            data: {username, password},
            timeout: 1500,
            success: function() {
                if (document.cookie) {
                  app.router.navigate('/aal')
                }
                app.preloader.hide();
            },
            error: function(data, textStatus) {
              app.dialog.alert(textStatus=="timeout"?"Сервер не отвечает.":"Ошибка при обращении к серверу.");
              app.preloader.hide();
            }
          });
        });
      }
    }
  },
  {
    path: '/aal',
    url: './pages/aal.html',
  },
  {
    path: '/about/',
    url: './pages/about.html',
  },
  {
    path: '/form/',
    url: './pages/form.html',
  },
  // Left View Pages
  {
    path: '/left-page-1/',
    url: './pages/left-page-1.html',
  },
  {
    path: '/left-page-2/',
    url: './pages/left-page-2.html',
  },
  // Default route (404 page). MUST BE THE LAST
  {
    path: '(.*)',
    url: './pages/404.html',
  },
];
