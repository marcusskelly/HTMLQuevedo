<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="ies"> //Elegimos la raiz principal, con "/" no saldria
        <html>
            <h1><xsl:value-of select="nombre"/></h1>
            <table><xsl:attribute name="border">1</xsl:attribute>
            <xsl:apply-templates />
            </table>
        </html>
    </xsl:template>

    <xsl:template match="nombre"> //plantilla de nombre vacia
    </xsl:template>

    <xsl:template match="web"> //plantilla de web vacia
    </xsl:template>



    <xsl:template match="ciclos">
        <tr>
        <th>Nombre del Ciclo</th>
        <th>Grado</th>
        <th>Año de titulo</th>
        <xsl:apply-templates />
        </tr>
    </xsl:template>

    <xsl:template match="ciclo">
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="grado"/></td>
        <td><xsl:value-of select="decretoTitulo/@año"/></td>
    </xsl:template>

</xsl:stylesheet>