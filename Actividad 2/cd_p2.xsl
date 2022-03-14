<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<!-- Elegir un artista cualquiera y mostrar una tabla con todas las canciones de ese artista. -->

<html>
    <body>
        <h1>Colección personal de CDs de Alvaro Morneo Gil</h1>
        <table border="1">
            <tr bgcolor="#FF0000">
                <th>Título</th>
                <th>Artista</th>
                <th>Sello</th>
                <th>Año</th>
                <th>Canciones</th>
            </tr>          

            <xsl:for-each select="cds/cd[artista='Myke Towers']">

            <tr>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="artista"/></td>
                <td><xsl:value-of select="sello"/></td>
                <td><xsl:value-of select="año"/></td>
                <td>
                    <xsl:for-each select="cancion">
                        <xsl:value-of select="."/>
                            <br/>
                    </xsl:for-each>
                </td>
            </tr>
            </xsl:for-each>   
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>