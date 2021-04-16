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

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/"> //Mismo mecanismo que ies
        <hitchcock>
            <xsl:apply-templates />
        </hitchcock>
    </xsl:template>

    <xsl:template match="estudios">
    </xsl:template>


    <xsl:template match="actores"> //Cabecera para actores
        <actores>
            <xsl:apply-templates />
        </actores>
    </xsl:template>

    <xsl:template match="actor">
            <actor><nombre><xsl:value-of select="@nombre"></xsl:value-of></nombre></actor>
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="peliculas"> //Cabecera para peliculas
        <peliculas>
            <xsl:apply-templates />
        </peliculas>
    </xsl:template>

    <xsl:template match="pelicula">
            <pelicula><xsl:attribute name="titulo"><xsl:value-of select="titulo"></xsl:value-of></xsl:attribute></pelicula>
    </xsl:template>



</xsl:stylesheet>
