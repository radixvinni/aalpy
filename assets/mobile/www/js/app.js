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
      //if (!document.cookie || document.cookie.length < 40) return app.router.navigate('/');
      var code = Blockly.Python.workspaceToCode(app.workspace);
      
      $('#results').append('\n======== начало исходного кода ========\n');
      $('#results').append(code);
      $('#results').append('\n======== конец исходного кода ========\n');
      $("#results").scrollTop($("#results")[0].scrollHeight);
      if (app.currentId == 'unsaved')
        localStorage.setItem(app.currentId, saveWorkspace());

      $.post(app.server+'/console/run', { cmd: code+'\n', type: "program" }, function(data) {
        $('#results').append(data);
        $("#results").scrollTop($("#results")[0].scrollHeight);
      });
    },
  },
  // App routes
  routes:routes,
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
    data: {oldpass:oldpass, newpass:newpass},
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
//Remove imports and variable initialization
Blockly.Python.finish = function(code) {return code}

//Use python2 print statements
Blockly.Python.text_print = function (a){return"print "+(Blockly.Python.valueToCode(a,"TEXT",Blockly.Python.ORDER_NONE)||"''")+"\n"}

//Allow usage of '.' in variable names
Blockly.Names.prototype.safeName_ = function (a){a?(a=encodeURI(a.replace(/ /g,"_")).replace(/[^\w.]/g,"_"),-1!="0123456789".indexOf(a[0])&&(a="my_"+a)):a="unnamed";return a}

Blockly.Blocks['lists_getSublist2'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("в")
        .appendField(new Blockly.FieldVariable("item"), "LIST")
        .appendField("взять подсписок с №")
        .appendField(new Blockly.FieldNumber(0), "START")
        .appendField("по №")
        .appendField(new Blockly.FieldNumber(0), "END")
        .appendField("с шагом");
    this.setInputsInline(true);
    this.setOutput(true, null);
    this.setColour(Blockly.Msg['LISTS_HUE']);
 this.setTooltip("Создаёт копию указанной части списка");
 this.setHelpUrl("https://github.com/google/blockly/wiki/Lists#getting-a-sublist");
  }
};
Blockly.Python['lists_getSublist2'] = function(block) {
  var variable_list = Blockly.Python.variableDB_.getName(block.getFieldValue('LIST'), Blockly.Variables.NAME_TYPE);
  var list = Blockly.Python.valueToCode(block, 'LIST',
      Blockly.Python.ORDER_MEMBER) || '[]';
  var at1 = block.getFieldValue('START');
  var at2 = block.getFieldValue('END');
  if (at1 == '0') at1 = '';
  if (at2 == '0') at1 = '';
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var code = list + '[' + at1 + ' : ' + at2 + ' : ' + value_name + ']';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Blocks['types_casting'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck(null)
        .appendField(new Blockly.FieldDropdown([["tuple","tuple"], ["list","list"], ["dict","dict"], ["set","set"], ["frozenset","frozenset"], ["str","str"], ["unicode","unicode"], ["int","int"], ["float","float"], ["complex","complex"], ["bool","bool"]]), "NAME");
    this.setInputsInline(false);
    this.setOutput(true, null);
    this.setColour(65);
 this.setTooltip("Преобразует выражение к указанному типу данных");
 this.setHelpUrl("");
  }
};

Blockly.Python['types_casting'] = function(block) {
  var dropdown_name = block.getFieldValue('NAME');
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var code = dropdown_name + '(' + value_name + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Blocks['python_hashlib'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("String")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("hashlib.")
        .appendField(new Blockly.FieldDropdown([["md5","md5"], ["sha1","sha1"], ["sha224","sha224"], ["sha256","sha256"], ["sha384","sha384"], ["sha512","sha512"]]), "FUNC");
    this.appendDummyInput()
        .appendField(new Blockly.FieldDropdown([[".hexdigest()","hexdigest"], [".digest()","digest"]]), "RETURN");
    this.setInputsInline(true);
    this.setOutput(true, "String");
    this.setColour(65);
 this.setTooltip("Вычисление хэш-функции");
 this.setHelpUrl("");
  }
};

Blockly.Python['python_hashlib'] = function(block) {
  var dropdown_func = block.getFieldValue('FUNC');
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var dropdown_return = block.getFieldValue('RETURN');
  var code = 'hashlib.' + dropdown_func + '(' + value_name + ').' + dropdown_return + '()';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};


Blockly.Blocks['dict_copy'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("dict")
        .appendField("копия словаря");
    this.setInputsInline(false);
    this.setOutput(true, "dict");
    this.setColour(65);
 this.setTooltip("возвращает копию словаря");
 this.setHelpUrl("");
  }
};

Blockly.Python['dict_copy'] = function(block) {
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var code = value_name + '.copy()';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Blocks['dict_get'] = {
  init: function() {
    this.appendValueInput("DEFAULT")
        .setCheck(null)
        .appendField(new Blockly.FieldDropdown([["найти или вернуть","get"], ["найти или создать","setdefault"], ["найти или ошибка","__getitem__"]]), "NAME");
    this.appendValueInput("KEY")
        .setCheck(null)
        .appendField("по ключу");
    this.appendValueInput("NAME")
        .setCheck("dict")
        .appendField("в словаре");
    this.setInputsInline(false);
    this.setOutput(true, null);
    this.setColour(65);
 this.setTooltip("возвращает значение по ключу, но если его нет, либо бросает исключение, либо возвращает или создаёт значение по умолчанию.");
 this.setHelpUrl("");
  }
};

Blockly.Python['dict_get'] = function(block) {
  var dropdown_name = block.getFieldValue('NAME');
  var value_default = Blockly.Python.valueToCode(block, 'DEFAULT', Blockly.Python.ORDER_ATOMIC);
  var value_key = Blockly.Python.valueToCode(block, 'KEY', Blockly.Python.ORDER_ATOMIC);
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  value_default = value_default && ', ' + value_default;
  var code = value_name + '.' + dropdown_name + '(' + value_key + value_default + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Blocks['dict_update'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("dict")
        .appendField("обновить словарь");
    this.appendValueInput("OTHER")
        .setCheck("dict")
        .appendField("значениями из");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(65);
 this.setTooltip("обновляет словарь, добавляя пары (ключ, значение) из другого словаря. Существующие ключи перезаписываются.");
 this.setHelpUrl("");
  }
};

Blockly.Python['dict_update'] = function(block) {
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var value_other = Blockly.Python.valueToCode(block, 'OTHER', Blockly.Python.ORDER_ATOMIC);
  var code = value_name + '.update(' + value_other + ')\n';
  return code;
};

Blockly.Blocks['python_hasattr'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("задано")
        .appendField(new Blockly.FieldVariable("share.a"), "NAME");
    this.setInputsInline(false);
    this.setOutput(true, "Boolean");
    this.setColour(65);
 this.setTooltip("проверяет, существует ли в модуле share переменная, объявленная как share.a");
 this.setHelpUrl("");
  }
};

Blockly.Python['python_hasattr'] = function(block) {
  var variable_name = Blockly.Python.variableDB_.getName(block.getFieldValue('NAME'), Blockly.Variables.NAME_TYPE);
  if (variable_name.indexOf('.')<0) 
    return ['True', Blockly.Python.ORDER_NONE];
  
  var module = variable_name.split('.')[0];
  var varname = variable_name.split('.')[1];
  var code = 'hasattr(' + module + ', "' + varname + '")';
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Blocks['python_delete'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("удалить")
        .appendField(new Blockly.FieldVariable("item"), "NAME");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(65);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};
Blockly.Python['python_delete'] = function(block) {
  var variable_name = Blockly.Python.variableDB_.getName(block.getFieldValue('NAME'), Blockly.Variables.NAME_TYPE);
  var code = 'del ' + variable_name + ';\n';
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Blocks['python_range'] = {
  init: function() {
    this.appendValueInput("FROM")
        .setCheck("Number")
        .appendField("список от");
    this.appendValueInput("TO")
        .setCheck("Number")
        .appendField("до");
    this.appendValueInput("STEP")
        .setCheck("Number")
        .appendField("шаг");
    this.setInputsInline(true);
    this.setOutput(true, null);
    this.setColour(65);
 this.setTooltip("возвращает список с целыми числами в заданном диапазоне");
 this.setHelpUrl("");
  }
};

Blockly.Python['python_range'] = function(block) {
  var value_from = Blockly.Python.valueToCode(block, 'FROM', Blockly.Python.ORDER_ATOMIC);
  var value_to = Blockly.Python.valueToCode(block, 'TO', Blockly.Python.ORDER_ATOMIC);
  var value_step = Blockly.Python.valueToCode(block, 'STEP', Blockly.Python.ORDER_ATOMIC);
  // TODO: Assemble Python into code variable.
  value_to =  value_to || value_from || '0';
  value_from = value_from  || '0';
  value_step = value_step || '1';
  if (value_step == '1') value_step = ''
  else value_step = ', ' + value_step;

  if (value_from == '0' && value_step == '') value_from = ''
  else value_from =  value_from + ', ';
  var code = 'range(' + value_from + value_to + value_step + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};
String.prototype.hashCode = function() {
  var hash = 0, i, chr;
  if (this.length === 0) return hash;
  for (i = 0; i < this.length; i++) {
    chr   = this.charCodeAt(i);
    hash  = ((hash << 5) - hash) + chr;
    hash |= 0; // Convert to 32bit integer
  }
  return hash;
};
//var seenTypes = new Set();
function convertType(t) {
  var conv = {"std::string":"String", "bool": "Boolean", "uint":"Number","int":"Number",
  "NumericSystem":"Number", "PolynomSystem":"Number", "std::set< uint >":"set","uchar":"Number"}
  return conv[t] || t;
}


if (!String.prototype.startsWith) {
  Object.defineProperty(String.prototype, 'startsWith', {
    enumerable: false,
    configurable: false,
    writable: false,
    value: function(searchString, position) {
      position = position || 0;
      return this.indexOf(searchString, position) === position;
    }
  });
}
if (!String.prototype.endsWith) {
  Object.defineProperty(String.prototype, 'endsWith', {
    value: function(searchString, position) {
      var subjectString = this.toString();
      if (position === undefined || position > subjectString.length) {
        position = subjectString.length;
      }
      position -= searchString.length;
      var lastIndex = subjectString.indexOf(searchString, position);
      return lastIndex !== -1 && lastIndex === position;
    }
  });
}
if (!String.prototype.includes) {
  String.prototype.includes = function(search, start) {
    'use strict';
    if (typeof start !== 'number') {
      start = 0;
    }
    
    if (start + search.length > this.length) {
      return false;
    } else {
      return this.indexOf(search, start) !== -1;
    }
  };
}
app.dynamicToolbox = '';
function addMethods(className, classMethods) {
  var hueColor = Math.abs((className.hashCode()) % 360);
  app.dynamicToolbox += '<category name="'+className+'" colour="'+hueColor+'">';
  var dynamicBlocks = '';
  var seenMethods = {};
  classMethods.forEach(function(e) {
    if (e.indexOf(className+' self') < 0) return;
    var methodName = e.split('(')[0];
    var seenTimes = seenMethods[methodName] || 0;
    seenMethods[methodName] = seenTimes + 1;
    if (methodName.startsWith('_') && methodName !== "__init__") return;
    if (e.split(' -> ').length > 2) {
      console.warn('skipped due to many ->', className, methodName);
      return;
    }
    var returnValueType = e.split(' -> ')[1];
    var methodFullName = className + '_' + methodName + '_' + seenTimes;
    var methodArguments = e.split('(')[1].split(')')[0];
    var shadows = '';
    methodArguments.split(', ').forEach(function(arg) {
      var argName = arg.split(' ')[1];
      var argType = arg.split(' ')[0];
      var argDefValue = '';
      if (argName == 'self' && methodName == '__init__') return;
      switch(convertType(argType)) {
        case 'String':
          argDefValue = '<shadow type="text"><field name="TEXT">1</field></shadow>';
          break;
        case 'Number':
          if (!argType.endsWith('System'))
          argDefValue = '<shadow type="math_number"><field name="NUM">1</field></shadow>';
          break;
        default:
          argDefValue = '<block type="variables_get"><field name="VAR">_</field></block>';
      }
      if (argDefValue) shadows += '<value name="'+argName.toUpperCase()+'">'+argDefValue+'</value>';
    });
    if (methodName == "__init__") app.dynamicToolbox += '<block type="'+methodFullName+'">'+shadows+'</block>';
    else dynamicBlocks += '<block type="'+methodFullName+'">'+shadows+'</block>';
    Blockly.Blocks[methodFullName] = {
      init: function() {
        var self = this;
        methodArguments.split(', ').forEach(function(arg) {
          var argName = arg.split(' ')[1];
          var argType = arg.split(' ')[0];
          if (!argName || !argType) {
            return;
          }
          if (argName == 'self' && methodName == '__init__') {
            self.appendDummyInput().appendField(className + "(");
            return;
          }
          var argument = self.appendValueInput(argName.toUpperCase()).setCheck(convertType(argType))
          if (argName == 'self') {
            self.appendDummyInput().appendField("." + methodName + "(");
            return;
          }
          argument.appendField(argName + "=");
        });
        self.appendDummyInput().appendField(")");
        self.setInputsInline(methodArguments.split(', ').length==1);
        self.setOutput(true, convertType(returnValueType));
        //self.setPreviousStatement(true, null);
        //self.setNextStatement(true, null);
        self.setColour(hueColor);
        self.setTooltip(e);
        self.setHelpUrl("");
      }
    };
    Blockly.Python[methodFullName] = function(block) {
      var code = '';
      var self = Blockly.Python.valueToCode(block, 'SELF', Blockly.Python.ORDER_ATOMIC);
      if (methodName == '__init__') code = className + '(';
      else code = self + '.' + methodName + '(';
      methodArguments.split(', ').forEach(function(arg) {
        var argName = arg.split(' ')[1];
        if (argName == 'self') return;
        var value = Blockly.Python.valueToCode(block, argName.toUpperCase(), Blockly.Python.ORDER_ATOMIC);
        if (!value && argName.includes('=')) value = argName.split('=')[1];
        code += value + ',';
      });
      if (code.endsWith(',')) code = code.slice(0, -1);
      code += ')'
      return [code, Blockly.Python.ORDER_NONE];
    }
  });
  app.dynamicToolbox += dynamicBlocks;
  app.dynamicToolbox += '</category>'
}

var methods = JSON.parse(document.getElementById('aal_methods').innerHTML);
for (var prop in methods) addMethods(prop, methods[prop]);

Blockly.Blocks['gssapi_client_ctx'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck(null)
        .appendField("контекст клиента GSSAPI сервиса");
    this.setOutput(true, null);
    this.setColour(60);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['gssapi_server_ctx'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck(null)
        .appendField("контекст сервера GSSAPI сервиса");
    this.setOutput(true, null);
    this.setColour(60);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['gssapi_step'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck(null)
        .appendField("выполнить шаг GSSAPI для токена");
    this.appendValueInput("CTX")
        .setCheck(null)
        .appendField("контекст");
    this.setOutput(true, null);
    this.setColour(60);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['gssapi_complete'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck(null)
        .appendField("обмен GSSAPI завершен для контекста");
    this.setOutput(true, null);
    this.setColour(60);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['gssapi_encrypt'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck(null)
        .appendField("зашифровать текст");
    this.appendValueInput("CTX")
        .setCheck(null)
        .appendField("GSSAPI контекст");
    this.setOutput(true, null);
    this.setColour(60);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['gssapi_decrypt'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck(null)
        .appendField("расшифровать текст");
    this.appendValueInput("CTX")
        .setCheck(null)
        .appendField("GSSAPI контекст");
    this.setOutput(true, null);
    this.setColour(60);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['python_eval'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck(null)
        .appendField("значение выражения");
    this.setOutput(true, null);
    this.setColour(60);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Python['gssapi_client_ctx'] = function(block) {
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var code = 'gssapi.SecurityContext(name=gssapi.Name('+value_name+'), usage="initiate")';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Python['gssapi_server_ctx'] = function(block) {
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var code = 'gssapi.SecurityContext(creds=gssapi.Credentials(usage="accept", name=gssapi.Name('+value_name+')), usage="accept")';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Python['gssapi_step'] = function(block) {
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var value_ctx = Blockly.Python.valueToCode(block, 'CTX', Blockly.Python.ORDER_ATOMIC);
  var code = value_ctx+'.step('+value_name+')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Python['gssapi_complete'] = function(block) {
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var code = value_name+'.complete';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Python['gssapi_encrypt'] = function(block) {
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var value_ctx = Blockly.Python.valueToCode(block, 'CTX', Blockly.Python.ORDER_ATOMIC);
  var code = value_ctx+'.encrypt('+value_name+')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Python['gssapi_decrypt'] = function(block) {
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var value_ctx = Blockly.Python.valueToCode(block, 'CTX', Blockly.Python.ORDER_ATOMIC);
  var code = value_ctx+'.decrypt('+value_name+')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Python['python_eval'] = function(block) {
  var value_name = Blockly.Python.valueToCode(block, 'NAME', Blockly.Python.ORDER_ATOMIC);
  var code = 'eval('+value_name+')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Python.math_change=function(a){var b=Blockly.Python.valueToCode(a,"DELTA",Blockly.Python.ORDER_ADDITIVE)||"0";a=Blockly.Python.variableDB_.getName(a.getFieldValue("VAR"),Blockly.Variables.NAME_TYPE);return a+" += "+b+"\n"};