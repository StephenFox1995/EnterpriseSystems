<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template name="print_grade">
        <xsl:param name="target_grade"/>
        <xsl:param name="list"/>
        <xsl:variable name="student_grade_count" select="count($list/student[grade = $target_grade])"/>
        <xsl:variable name="total_student_count" select="count($list/student)"/>
        <h1>
            <xsl:value-of select="$target_grade"/>
        </h1>
        Number of students receiving grade:
        <b><xsl:value-of select="$student_grade_count"/></b>
        <br/>
        Percentage of students receiving grade:
        <b><xsl:value-of select="$student_grade_count div $total_student_count * 100"/>%</b>
        <br/>
    </xsl:template>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Grade Report</title>
            </head>
            <body>
                <xsl:call-template name="print_grade">
                    <xsl:with-param name="target_grade" select="'A'"/>
                    <xsl:with-param name="list" select="class"/>
                </xsl:call-template>
                <p/>
                <xsl:call-template name="print_grade">
                    <xsl:with-param name="target_grade" select="'B'"/>
                    <xsl:with-param name="list" select="class"/>
                </xsl:call-template>
                <p/>
                <xsl:call-template name="print_grade">
                    <xsl:with-param name="target_grade" select="'C'"/>
                    <xsl:with-param name="list" select="class"/>
                </xsl:call-template>
                <p/>
            </body>
        </html>
</xsl:template>
</xsl:stylesheet>