<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Biblioteca personal de Alvaro Morneo Gil</h1>
        <table>
            <!-- <tr bgcolor="#ff0000">
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>ISBN</th>
            </tr> -->
            <tr bgcolor="#ff0000">
                <th>ISBN</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
            </tr>
            <xsl:for-each select="libreria/libros">
            <tr>
                <!-- <xsl:choose>
                    <xsl:when test="precio = 10.50">
                        <td bgcolor="#0000FF">
                            <xsl:value-of select="titulo"/>
                        </td>
                        <td bgcolor="#0000FF">
                            <xsl:value-of select="autor"/>
                        </td>
                        <td bgcolor="#0000FF">
                            <xsl:value-of select="precio"/>
                        </td>
                        <td bgcolor="#0000FF">
                            <xsl:value-of select="ISBN"/>
                        </td>
                    </xsl:when>
                    <xsl:when test="precio = 60.50">
                        <td bgcolor="#0000FF">
                            <xsl:value-of select="titulo"/>
                        </td>
                        <td bgcolor="#0000FF">
                            <xsl:value-of select="autor"/>
                        </td>
                        <td bgcolor="#0000FF">
                            <xsl:value-of select="precio"/>
                        </td>
                        <td bgcolor="#0000FF">
                            <xsl:value-of select="ISBN"/>
                        </td>
                    </xsl:when> -->
                    <xsl:choose>
                    <xsl:when test="precio &gt; 25">
                        <td bgcolor="#ff0000">
                            <xsl:value-of select="ISBN"/>
                        </td>
                        <td bgcolor="#ff0000">
                            <xsl:value-of select="titulo"/>
                        </td>
                        <td bgcolor="#ff0000">
                            <xsl:value-of select="autor"/>
                        </td>
                        <td bgcolor="#ff0000">
                            <xsl:value-of select="precio"/>
                        </td>
                    </xsl:when>
                    <xsl:when test="precio &lt; 25">
                        <td bgcolor="#ffff00">
                            <xsl:value-of select="ISBN"/>
                        </td>
                        <td bgcolor="#ffff00">
                            <xsl:value-of select="titulo"/>
                        </td>
                        <td bgcolor="#ffff00">
                            <xsl:value-of select="autor"/>
                        </td>
                        <td bgcolor="#ffff00">
                            <xsl:value-of select="precio"/>
                        </td>
                    </xsl:when>
                </xsl:choose>
            </tr>
        </xsl:for-each>   
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
