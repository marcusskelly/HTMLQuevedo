<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <musica>
        <xsl:apply-templates/>
        </musica>
    </xsl:template>

    <xsl:template match="musico">
        <musico>
        <xsl:attribute name="id"><xsl:value-of select="@id"></xsl:value-of></xsl:attribute>
        <xsl:attribute name="pais"><xsl:value-of select="pais"></xsl:value-of></xsl:attribute>
        <xsl:value-of select="nombre"></xsl:value-of>
        <nacido><xsl:value-of select="fechas/@nacimiento"></xsl:value-of></nacido>
        <fallecido><xsl:value-of select="fechas/@muerte"></xsl:value-of></fallecido>
        </musico>
    </xsl:template>

    <xsl:template match="obra">
        <obra>
        <xsl:attribute name="autor"><xsl:value-of select="autor"></xsl:value-of></xsl:attribute>
        <xsl:attribute name="genero"><xsl:value-of select="genero/@nombre"></xsl:value-of></xsl:attribute>
        <xsl:value-of select="nombre"></xsl:value-of>
        <nacido><xsl:value-of select="fechas/@nacimiento"></xsl:value-of></nacido>
        <fallecido><xsl:value-of select="fechas/@muerte"></xsl:value-of></fallecido>
        </obra>
    </xsl:template>



</xsl:stylesheet>