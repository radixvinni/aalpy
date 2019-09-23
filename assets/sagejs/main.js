define([
    "jquery",
    "session",
], function (
    $,
    Session,
) {
    function install () {
        s = new Session($('#console'), "sage", [], undefined, true);
        window.$post = function (url, data, callback) {
            if (data.cmd.trim())
                s.execute(data.cmd);
            else callback('')
            s._output = s.output;
            s.output = function (html, block_id) {
                if (block_id === null) {
                    //if standard output, creates <span class='jqconsole-output'>{{html}}</span> in console div and returns it
                    var txt = $(html).text();
                    callback(txt);
                    var elem = $('#console .jqconsole-output').last();
                    if (data.type == "console") elem.addClass('newline');
                    return elem;
                }
                return s._output(html, block_id);
            }
        }
        return s;
    }
    return { install, Session }
});