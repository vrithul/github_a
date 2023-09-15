<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Christ University Programs</title>
      </head>
      <body>
        <h1>Christ University Programs</h1>
        <xsl:apply-templates select="Christ_University/*"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="School_of_science | School_of_buiness_and_management | School_of_law | School_of_Arts_and_Humanities | School_of_Social_Sciences">
    <h2><xsl:value-of select="translate(name(), '_', ' ')"/></h2>
    <ul>
      <xsl:apply-templates select="*"/>
    </ul>
  </xsl:template>

  <xsl:template match="*">
    <li><xsl:value-of select="."/></li>
  </xsl:template>
</xsl:stylesheet>
