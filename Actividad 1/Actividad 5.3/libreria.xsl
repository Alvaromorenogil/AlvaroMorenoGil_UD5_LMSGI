<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Biblioteca personal de Alvaro Morneo Gil</h1>
        <table>
            <tr bgcolor="#FF0000">
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>ISBN</th>
            </tr>
            <xsl:for-each select="libreria/libros[autor='Sergio Salpicado']">
            <!-- <xsl:if test="precio &gt; 10"> -->
            <xsl:if test="precio &gt; 12">
            
            <tr>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="autor"/></td>
                <td><xsl:value-of select="precio"/></td>
                <td><xsl:value-of select="ISBN"/></td>
            </tr>
            </xsl:if>
            </xsl:for-each>   
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
