<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <xsl:apply-templates />
        </html>
    </xsl:template>

    <xsl:template match="lenguajes">
        <xsl:apply-templates select="lenguaje"/> //Sin esta linea, solo se interpreta este bloque, no el de abajo
        <p> Informacion obtenida de <xsl:value-of select="./@fuente"/>  en el anio <xsl:value-of select="./@fecha"/></p>
    </xsl:template>

    <xsl:template match="lenguaje">
        <p>El lenguaje <xsl:value-of select="nombre"/> es <xsl:choose>
            <xsl:when test="compilado">compilado</xsl:when>
            <xsl:otherwise>interpretado</xsl:otherwise>
        </xsl:choose></p>
    </xsl:template>



</xsl:stylesheet>