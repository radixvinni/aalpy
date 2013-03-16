<?xml version="1.0"?>
 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" version="4.0"/>
  <xsl:template match="/">
    <html>
    <head>
      <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet"/>
      <script src="http://code.jquery.com/jquery.js"></script>
      <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
      <div class="accordion container" id="accordion">
      <h1>AAL Class List</h1>
        <xsl:apply-templates select="//table[tr/@bgcolor = '#ffc8d8']"/>
      </div>
    </body>
    </html>
  </xsl:template>
  
  <xsl:template match="table">
   <div class="accordion-group">
    <div class="accordion-heading">
      <span class="pull-right muted" style="padding: 8px 0 0;">
        <xsl:value-of select="tr[2]/td[last()]/tt"/>
      </span>
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#{tr[1]/td/font/a/@name}">
        <xsl:value-of select="tr[1]/td/font/a/@name"/>
      </a>
    </div>
    <div id="{tr[1]/td/font/a/@name}" class="accordion-body collapse">
      <div class="accordion-inner">
      <h4><xsl:value-of select="tr[1]/td/font"/></h4>
        <xsl:copy-of select="tr[last()]/td[last()]" />
      </div>
    </div>
   </div>
    
  </xsl:template>

</xsl:stylesheet>
