<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

	</xsl:template>
	<xsl:template match="Zone">
		<div class="mega-menu-item">
			<h2 style="margin-bottom:30px">
				<xsl:value-of select="Title"></xsl:value-of>
			</h2>
			<div class="product-child-tab-mega">
				<xsl:apply-templates select="Zone" mode="Zone1"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone1">
		<div class="product-child-tab-item-mega">
			<xsl:if test="IsActive = 'true'">
				<xsl:attribute name="class">
					<xsl:text>product-child-tab-item-mega active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a href="#">
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
					<figcaption>
						<p>
							<xsl:value-of select="Title"></xsl:value-of>
							<xsl:value-of select="Description"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
