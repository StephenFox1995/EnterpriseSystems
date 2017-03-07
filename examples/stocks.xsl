<?xml version ="1.0"?>
<xsl:stylesheet 
  version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:for-each select="stocks/stock">
      <xsl:number value="position()"/>
      <xsl:value-of select="symbol"/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>