sage-root := $(shell [ -n "$$SAGE_ROOT" ] && echo "$$SAGE_ROOT" || sage --root || echo "\$$SAGE_ROOT")
all-min-js = embedded_sagecell.js

$(all-min-js): build *.js
	-rm -rf embedded_sagecell.js
	# Host standalone jquery for compatibility with old instructions
	cp -a *.js build
	cd build && r.js -o build.js
	cp build/main-built.js $(all-min-js)


build:
	-rm -rf build
	cp -a $(sage-root)/local/lib/python2.7/site-packages/notebook/static build
	cp $(sage-root)/local/lib/python2.7/site-packages/sagenb/data/sage/js/canvas3d_lib.js \
	   build
	ln -sf $(sage-root)/local/share/jmol/appletweb/SageMenu.mnu static/SageMenu.mnu
	cp $(sage-root)/local/share/jsmol/JSmol.min.nojq.js build/JSmol.js
	wget -P build \
		https://raw.githubusercontent.com/sockjs/sockjs-client/master/dist/sockjs.js \
		https://raw.githubusercontent.com/requirejs/domReady/latest/domReady.js \
		https://raw.githubusercontent.com/requirejs/text/latest/text.js
	python -c "from matplotlib.backends.backend_webagg_core import FigureManagerWebAgg; print(FigureManagerWebAgg.get_javascript().encode('utf8'))" > build/mpl.js

