<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:my="my:my" exclude-result-prefixes="my">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:param name="pLang" select="'nl'"/>
    
    <my:texts>
        <pageTitle lang="en">This is the title in English</pageTitle>
        <pageTitle lang="nl">Titel in het nederlands</pageTitle>
    </my:texts>
    
    <xsl:variable name="vTexts" select="document('')/*/my:texts"/>
    
    <xsl:template match="/">
        <html>
            <title>
                <xsl:value-of select="$vTexts/pageTitle[@lang = $pLang]"/>
            </title>
        </html>
    </xsl:template>
</xsl:stylesheet>