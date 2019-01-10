routes = [
  {
    path: '/',
    url: './index.html',
    on:{
      pageInit: function() {
        console.log('Restoring saved login settings'); 
        $$('.login-screen-content [name="username"]').val(window.localStorage.getItem("username") || '');
        $$('.login-screen-content [name="password"]').val(window.localStorage.getItem("password") || '');
        $$('.login-screen-content [name="url"]').val(window.localStorage.getItem("url") || '');

        // Login Button clicked
        $$('.login-screen-content .login-button').on('click', function () {
          app.input.validateInputs('.login-screen-content');
          var save = $$('.login-screen-content #save:checked').val();
          var username = $$('.login-screen-content [name="username"]:valid').val();
          var password = $$('.login-screen-content [name="password"]:valid').val();
          app.server = $$('.login-screen-content [name="url"]:valid').val() || 'http://mm.mpei.ac.ru:8080';
          window.localStorage.setItem("url", app.server);
          window.localStorage.setItem("username", username);
          if (save) window.localStorage.setItem("password", password);
          
          app.preloader.show();
          $.ajax({
            type: "POST",
            url: app.server+"/login",
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
    on: {
      pageInit: function() {
        console.log('Initializing blockly')
        var blocklyArea = document.getElementById('blocklyArea');
        var blocklyDiv = document.getElementById('blocklyDiv');
        for (var messageKey in MSG) {
          if (messageKey.indexOf('cat') == 0) {
            Blockly.Msg[messageKey.toUpperCase()] = MSG[messageKey];
          }
        }
      
        // Construct the toolbox XML, replacing translated variable names.
        var toolboxText = document.getElementById('toolbox').outerHTML;
        toolboxText = toolboxText.replace(/(^|[^%]){(\w+)}/g,
            function(m, p1, p2) {return p1 + MSG[p2];});
        
        var toolboxXml = Blockly.Xml.textToDom(toolboxText);
        app.workspace = Blockly.inject(blocklyDiv,
            {media: 'blockly/media/',
            horizontalLayout:true,
            scrollbars:true,
            toolboxPosition:"end",
            zoom: {
              wheel: true,
              startScale: 1.0,
              maxScale: 3,
              minScale: 0.3,
              scaleSpeed: 1.2},
            toolbox: toolboxXml});
        
        var onresize = function(e) {
          // Position blocklyDiv over blocklyArea.
          blocklyDiv.style.left = blocklyArea.offsetLeft + 'px';
          blocklyDiv.style.top = blocklyArea.offsetTop + 'px';
          blocklyDiv.style.width = blocklyArea.offsetWidth + 'px';
          blocklyDiv.style.height = blocklyArea.offsetHeight + 'px';
          Blockly.svgResize(app.workspace);
        };
        window.addEventListener('resize', onresize, false);
        onresize();
        Blockly.svgResize(app.workspace);
      }
    }
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
    on:{pageInit:prettyPrint},
  },
  {
    path: '/left-page-2/',
    url: './pages/left-page-2.html',
    on:{pageInit:prettyPrint},
  },
  // Default route (404 page). MUST BE THE LAST
  {
    path: '(.*)',
    url: './pages/404.html',
  },
];
