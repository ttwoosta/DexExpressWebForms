<?xml version="1.0"?>
<xsl:stylesheet
   version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xmlns:xsd="http://www.w3.org/2001/XMLSchema"
   xmlns:msxsl="urn:schemas-microsoft-com:xslt"
>
  <xsl:strip-space elements="*"/>
  <xsl:output method="xml"
      omit-xml-declaration="yes"
      indent="yes"
      standalone="yes" />

  <xsl:template match="/">
    <xsl:for-each select="bookstore">
      <xsl:element name="bookstore">
        <xsl:for-each select="book">
          <xsl:element name="book">
            <xsl:attribute name="ISBN">
              <xsl:value-of select="@ISBN"/>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="title"/>
            </xsl:attribute>
            <xsl:attribute name="price">
              <xsl:value-of select="price"/>
            </xsl:attribute>
          </xsl:element>
        </xsl:for-each>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>