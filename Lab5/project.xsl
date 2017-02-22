<?xml version ="1.0"?>
<xsl:stylesheet 
  version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <h1><xsl:value-of select="project/student"/></h1>
      <h2><xsl:value-of select="project/date"/></h2>
      <xsl:for-each select="project/objective">
        <h4><xsl:value-of select="name"/></h4>
        <xsl:value-of select="description"/>
      </xsl:for-each>
    </html>
  </xsl:template>
</xsl:stylesheet>