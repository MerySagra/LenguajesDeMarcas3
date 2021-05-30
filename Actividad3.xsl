<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="Actividad3.xml version="1.0" encoding="UTF-8"?>">
<xsl:template match="/">
<html> 
<body>
  <h2>ITT</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Profesor</th>
      <th style="text-align:left">Director</th>
    </tr>
    <xsl:for-each select="ite">
    <tr>
      <td><xsl:value-of select="Profesor"/></td>
      <td><xsl:value-of select="Director"/></td>
    </tr>
    </xsl:for-each>
  </table>
    <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Jefe_Estudios</th>
      <th style="text-align:left">Ciclos</th>
    </tr>
    <xsl:for-each select="ite">
    <tr>
      <td><xsl:value-of select="Jefe_Estudios"/></td>
      <td><xsl:value-of select="Ciclos"/></td>
    </tr>
    </xsl:for-each>
  </table>
  <ul>
                
                    <li>
                        Director
                        <xsl:value-of select="Director"/>
                        <ul>
                            <li>
                                Nombre:
                                <xsl:value-of select="nombre"/>
                            </li>
                            <li>
                                Despacho:
                                <xsl:value-of select="Despacho"/>
                                
                            </li>
                        </ul>
                    </li>
                
            </ul>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

