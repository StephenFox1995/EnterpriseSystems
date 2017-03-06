<?xml version ="1.0"?>
<xsl:stylesheet 
  version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" type="text/css" href="./style.css"/>
        </head>
        <h2>Invoice Number: <xsl:value-of select="invoice/invoice_number"/></h2>
        <h3>Invoice Date: <xsl:value-of select="invoice/invoice_date"/></h3>
        
        <table>
            <tr>
                <th>Item</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
            <xsl:for-each select="invoice/item">
                <tr>
                    <td><xsl:value-of select="item_name"/></td>
                    <td><xsl:value-of select="price"/></td>
                    <td><xsl:value-of select="quantity"/></td>
                </tr>
            </xsl:for-each>
        </table>
        <h2>Payment Info: <xsl:value-of select="invoice/payment_information"/></h2>
        <xsl:element name="a">
            <xsl:attribute name="href">http://www.dit.ie</xsl:attribute>
            www.dit.ie
        </xsl:element>
    </html>
  </xsl:template>
</xsl:stylesheet>