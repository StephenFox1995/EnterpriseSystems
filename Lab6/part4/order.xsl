<?xml version ="1.0"?>
<xsl:stylesheet 
  version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
        <h2>Invoice Number: <xsl:value-of select="invoice/invoice_number"/></h2>
        <h3>Invoice Date: <xsl:value-of select="invoice/invoice_date"/></h3>
        <xsl:apply-templates select="invoice/item">
            <xsl:sort select="quantity" order="ascending"/>
        </xsl:apply-templates>
        <h2>Payment Info: <xsl:value-of select="invoice/payment_information"/></h2>
    </html>
  </xsl:template>

<xsl:template match="item">
    <xsl:if test="quantity > 1" >
        <h4>Item: <xsl:value-of select="item_name"/></h4>
        Price: <xsl:value-of select="price"/> <br/>
        Quantity: <xsl:value-of select="quantity"/>
    </xsl:if>
</xsl:template>
</xsl:stylesheet>