<?xml version="1.0"?>
 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" version="4.0"/>
  <xsl:template match="/">
<div class="container">
    <ul class="nav nav-pills">
      <li><a href="/help/python">Язык Python</a></li>
      <li><a href="/help/aal">Библиотека AAL</a></li>
      <li class="active"><a href="/help/class">Список классов AAL</a></li>
      <li><a href="/help/dev">Для разработчиков AAL</a></li>
    </ul>
    <div class="accordion" id="accordion">
      <h1>Список классов AAL</h1>
      <xsl:apply-templates select="//table[tr/@bgcolor = '#ffc8d8']"/>
    </div>
</div>

%rebase layout title='Справка по Алгебраическому процессору МЭИ', path='/help', is_user=True, is_admin=False
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
