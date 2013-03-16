#!/bin/sh
pydoc -w AAL
xsltproc --html aal.xsl AAL.html > pydoc.html
rm AAL.html
