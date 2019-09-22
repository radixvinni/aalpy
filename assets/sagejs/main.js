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
            s.execute(data.cmd);
            s._output = s.output;
            s.output = function (html, block_id) {
                if (block_id === null) {
                    //if standard output, creates <span class='jqconsole-output'>{{html}}</span> in console div and returns it
                    callback($(html).text());
                    return $('#console .jqconsole-output').last()
                }
                return s._output(html, block_id);
            }
        }
        return s;
    }
    return { install, Session }
});