<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="hitchcock"> //Mismo mecanismo que ies
        <html>
            <h1>peliculas de hitchcock</h1>
            <xsl:apply-templates />
        </html>
    </xsl:template>

    <xsl:template match="estudios">
    </xsl:template>

    <xsl:template match="actores">
    </xsl:template>

    <xsl:template match="pelicula">
        <p><strong><xsl:value-of select="titulo"/></strong>, con <xsl:value-of select="actores/actor"></xsl:value-of> y <xsl:value-of select="actores/actriz"></xsl:value-of> se estreno en <xsl:value-of select="fecha"></xsl:value-of></p>
    </xsl:template>



</xsl:stylesheet>