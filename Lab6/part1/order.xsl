<?xml version ="1.0"?>
<xsl:stylesheet 
  version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
        <h2>Invoice Number: <xsl:value-of select="invoice/invoice_number"/></h2>
        <h3>Invoice Date: <xsl:value-of select="invoice/invoice_date"/></h3>
        <xsl:for-each select="invoice/item">
            <h4>Item: <xsl:value-of select="item_name"/></h4>
            Price: <xsl:value-of select="price"/> <br/>
            Quantity: <xsl:value-of select="quantity"/>
        </xsl:for-each>
        <h2>Payment Info: <xsl:value-of select="invoice/payment_information"/></h2>
    </html>
  </xsl:template>
</xsl:stylesheet>
