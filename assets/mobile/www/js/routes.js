//create buttons to toggle between blockly and code with result examples
function injectBlockly() {
  prettyPrint();
  $('.injectBlockly').each(function() {
    var btn = $('<button class="button button-round button-raised button-small button-right"><i class="icon f7-icons">eye_off</i></button>').insertAfter($(this));
    var xml = Blockly.Xml.textToDom(this.innerHTML);
    var params = {
      media: 'blockly/media/',
      scrollbars:true,
      zoom: {
        wheel: true,
        startScale: 0.5,
        maxScale: 3,
        minScale: 0.1,
        scaleSpeed: 1.2
      }
    };

    btn.click(function() {
      var eye = btn.find('i');
      if (eye.html() == 'eye_fill') eye.html('eye_off');
      else eye.html('eye_fill');
      var blocklyArea = $(this).next();
      var blocklyDiv = blocklyArea.next();
      if (!blocklyDiv.hasClass('injected')) {
        blocklyDiv = $('<div class="injected"></div>').insertAfter(blocklyArea);
        blocklyDiv[0].style.left = blocklyArea[0].offsetLeft + 'px';
        blocklyDiv[0].style.top = blocklyArea[0].offsetTop + 'px';
        blocklyDiv[0].style.width = blocklyArea[0].offsetWidth + 'px';
        blocklyDiv[0].style.height = blocklyArea[0].offsetHeight + 'px';
        var workspace = Blockly.inject(blocklyDiv[0], params);
        Blockly.Xml.domToWorkspace(xml, workspace);
        Blockly.svgResize(workspace);
      }
      else blocklyDiv.toggle();
      blocklyArea.toggle();
      return false;
    });

  });
}

var saveWorkspace = function() { return Blockly.Xml.domToText(Blockly.Xml.workspaceToDom(app.workspace)) }
var restoreWorkspace = function(x) { return Blockly.Xml.domToWorkspace(Blockly.Xml.textToDom(x), app.workspace) }
var copyToWorkspace = function(i) { return Blockly.Xml.domToWorkspace(Blockly.Xml.textToDom($('.injectBlockly')[i].innerHTML), app.workspace) }

// Construct the toolbox XML, replacing translated variable names.
function toolboxXml() {
  if (!app.toolboxXml) {
        for (var messageKey in MSG) {
          if (messageKey.indexOf('cat') == 0) {
            Blockly.Msg[messageKey.toUpperCase()] = MSG[messageKey];
          }
        }
        var toolboxText = document.getElementById('toolbox').outerHTML;
        toolboxText = toolboxText.replace('###', app.dynamicToolbox);
        toolboxText = toolboxText.replace(/(^|[^%]){(\w+)}/g,
            function(m, p1, p2) {return p1 + MSG[p2];});
        
        app.toolboxXml = Blockly.Xml.textToDom(toolboxText);
  }
  return app.toolboxXml;
}

routes = [
  {
    path: '/',
    url: './index.html',
    //redirect: function (route, resolve, reject) { if (!document.cookie) resolve('/'); },
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
          app.username = username;
          window.localStorage.setItem("url", app.server);
          window.localStorage.setItem("username", username);
          if (save) window.localStorage.setItem("password", password);
          
          app.preloader.show();
          $.ajax({
            type: "POST",
            url: app.server+"/login",
            data: {username:username, password:password},
            timeout: 1500,
            success: function() {
                app.router.navigate('/aal/unsaved')
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
    path: '/aal/:program',
    url: './pages/aal.html',
    on: {
      pageInit: function(page) {
        var program =  page.detail.route.params.program || 'unsaved';
        app.currentId = program;
        console.log('Initializing aal', program);
        var state = window.localStorage.getItem(program) || '<xml/>';
        if (program in app.data) state = app.data[program].workspace;
        var xml = Blockly.Xml.textToDom(state);
        var blocklyArea = $('.blocklyArea').last()[0];
        var blocklyDiv = $('.blocklyDiv').last()[0];
        //if (app.workspace) app.workspace.dispose();
        
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
            toolbox: toolboxXml()});
        
        Blockly.Xml.domToWorkspace(xml, app.workspace);
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
        //if (!app.data)
        $.ajax({
            type: "GET",
            url: app.server + '/assets/mobile/index.json',
            timeout: 1500,
            success: function(data) {
                app.data = data;
                $('.practice .dynamic').remove();
                for(var key in data) {
                  //var workspace = data[key].workspace;
                  var name = data[key].name;
                  var visibility = data[key].visibility;
                  if (visibility == 'admin' && app.username !== 'admin') return;
                  //localStorage.setItem(key, workspace);
                  $('.practice').prepend('<li class="dynamic"><a href="/aal/'+key+'" data-view=".view-main" class="panel-close">'+name+'</a></li>');
                }
            },
            error: function(data, textStatus) {
              app.dialog.alert(textStatus=="timeout"?"Сервер не отвечает.":"Ошибка при обращении к серверу.");
            }
        });
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
    on: { pageInit: function() {
      var curData = app.data[app.currentId];
      if (curData) {
        $$('.save-form [name="name"]').val(curData.name);
        $$('.save-form [name="descr"]').val(curData.descr);
        $$('.save-form [name="visibility"]').val(curData.visibility);
      }
      $$('.save-form #save').on('click', function () {
        var name = $$('.save-form [name="name"]').val();
        var descr = $$('.save-form [name="descr"]').val();
        var visibility = $$('.save-form [name="visibility"]').val();
        var id = app.currentId;
        var workspace = saveWorkspace();
        if (id=='unsaved') id = 'id'+Math.random();
        app.preloader.show();
        $.ajax({
          type: "POST",
          url: app.server + '/blockly',
          timeout: 1500,
          data: {name:name, descr:descr, visibility:visibility, id:id, workspace:workspace, action:"save"},
          success: function(data) {
              app.router.back();
              app.preloader.hide();
          },
          error: function(data, textStatus) {
            app.dialog.alert(textStatus=="timeout"?"Сервер не отвечает.":"Ошибка при обращении к серверу.");
            app.preloader.hide();
          }
        });
      });
      $$('.save-form #delete').on('click', function () {
        var id = app.currentId;
        if (id=='unsaved') return;
        app.preloader.show();
        $.ajax({
          type: "POST",
          url: app.server + '/blockly',
          timeout: 1500,
          data: {id:id, action:"delete"},
          success: function(data) {
              app.router.navigate('/aal/unsaved');
              app.preloader.hide();
          },
          error: function(data, textStatus) {
            app.dialog.alert(textStatus=="timeout"?"Сервер не отвечает.":"Ошибка при обращении к серверу.");
            app.preloader.hide();
          }
        });
      });
    }}
  },
  // Left View Pages
  {
    path: '/left-page-1/',
    url: './pages/left-page-1.html',
    on:{pageInit:injectBlockly},
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
