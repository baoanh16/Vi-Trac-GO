<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:apply-templates select="Zone" mode="Zone1"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone1">

		<xsl:if test="ZoneId = 202">
			<div class="mega-menu-item menu-brand ">
				<h2>
					<xsl:value-of select="Title"></xsl:value-of>
				</h2>
				<div class="product-status-tab-mega ">
					<xsl:apply-templates select="Zone" mode="Zone2ThuongHieu"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone2ThuongHieu">
		<div class="product-child-tab-item-mega">
			<xsl:if test="IsActive = 'true'">
				<xsl:attribute name="class">
					<xsl:text>product-child-tab-item-mega active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="ic">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>

				</figure>
			</a>
		</div>
	</xsl:template>

</xsl:stylesheet>
