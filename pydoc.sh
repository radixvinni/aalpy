#!/bin/sh
pydoc -w AAL
xsltproc --html aal.xsl AAL.html > views/helpclass.tpl
rm AAL.html
