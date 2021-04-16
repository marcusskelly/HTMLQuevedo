<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <xsl:apply-templates />
        </html>
    </xsl:template>


    <xsl:template match="diccionarios">
        <ul>
            <xsl:apply-templates />
        </ul>
    </xsl:template>

    <xsl:template match="diccionario">
        <li><xsl:value-of select="nombre"></xsl:value-of></li>
    </xsl:template>


</xsl:stylesheet>