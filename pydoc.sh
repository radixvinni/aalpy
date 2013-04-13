#!/bin/sh
pydoc -w AAL
xsltproc --html aal.xsl AAL.html > assets/doc/index.html
rm AAL.html
