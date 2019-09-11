<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="product-order">
			<xsl:apply-templates select="/ProductFilter/Group"></xsl:apply-templates>


		</div>
	</xsl:template>
	<xsl:template match="Group">
		<xsl:if test="GroupId= '15' or GroupId='16'">
			<div class="product-order-item">
				<select>
					<option>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</option>
					<xsl:apply-templates select="Option"></xsl:apply-templates>

				</select>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Option">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>

</xsl:stylesheet>
