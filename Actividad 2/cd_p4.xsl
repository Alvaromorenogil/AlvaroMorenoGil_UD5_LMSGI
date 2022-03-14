<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<!-- Elegir una duración máxima de canción y mostrar una tabla con todas
las canciones que tienen una duración inferior a la elegida. -->

<html>
    <body>
        <h1>Colección personal de CDs de Alvaro Morneo Gil</h1>
        <table border="1">
            <tr bgcolor="#FF0000">
                <th>Título del álbum</th>
                <th>Artista</th>
                <th>Cancion</th>
                <th>Sello</th>
                <th>Año</th>
                <th>Duracion</th>
            </tr>   
                    
            <xsl:for-each select="cds/cd">
                <xsl:variable name="titulo">
                    <xsl:value-of select="titulo"/>
                </xsl:variable>

                <xsl:variable name="artista">
                    <xsl:value-of select="artista"/>
                </xsl:variable>

                <xsl:variable name="cancion">
                    <xsl:value-of select="cancion"/>
                </xsl:variable>

                <xsl:variable name="sello">
                    <xsl:value-of select="sello"/>
                </xsl:variable>

                <xsl:variable name="año">
                    <xsl:value-of select="año"/>
                </xsl:variable>

                <xsl:for-each select="cancion">
                    <xsl:if test="@tiempo &lt; 230">
                        <tr text-align="center">
                        <td><xsl:value-of select="$titulo"/></td>
                        <td><xsl:value-of select="$artista"/></td>
                        <td><xsl:value-of select="."/></td>
                        <td><xsl:value-of select="$sello"/></td>
                        <td><xsl:value-of select="$año"/></td>
                        <td><xsl:value-of select="@tiempo"/></td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>