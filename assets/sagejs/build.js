({
    name: "main",
    out: "main-built.js",
    packages: [
        {
            name: "codemirror",
            location: "components/codemirror",
            main: "lib/codemirror"
        }
    ],
    paths: {
        'es6-promise': 'components/es6-promise/promise',
        "jquery-ui": "components/jquery-ui/jquery-ui.min",
        "moment": "components/moment/min/moment.min",
        "requireLib": "components/requirejs/require",
        "underscore": "components/underscore/underscore-min"
    },
    include: [
        "requireLib"
    ]
})