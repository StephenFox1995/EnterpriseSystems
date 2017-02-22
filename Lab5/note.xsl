<?xml version ="1.0"?>
<xsl:stylesheet 
  version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  

  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="./style.css"/>
      </head>
      <div class="note">
        <div>To: <xsl:value-of select="note/to"/></div>
        <div class="heading">Heading: <xsl:value-of select="note/heading"/></div>
        <div class="body">Body: <xsl:value-of select="note/body"/></div>
        <div class="body">Locations: 
          <xsl:for-each select="note/locations/location">
            <ul>
              <li><xsl:value-of select="name"/></li>
            </ul>
          </xsl:for-each>
        </div>
        <div class="from">
          From: <xsl:value-of select="note/from/person/name"/>
          <br/>
          Address: <xsl:value-of select="note/from/person/address"/>
        </div>
      </div>
    </html>
  </xsl:template>
</xsl:stylesheet>