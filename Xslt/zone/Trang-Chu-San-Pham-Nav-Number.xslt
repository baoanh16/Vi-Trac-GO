<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h2 class="vt-title">
			<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
		</h2>
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">

		<div class="product-status-content home-product-navigation">
			<xsl:apply-templates select="Zone" mode="Zone2TabContent"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2TabContent">
		<div class="product-status-content-item">
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text> product-status-content-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<div class="product-child-mobile-toggle">Danh sách</div>
			<div class="product-child-tab">
				<xsl:apply-templates select="Zone" mode="Zone3"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3">
		<a class="product-child-tab-item">
			<xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>product-child-tab-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="href">
				<xsl:text>javascript:void(0)</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-type">
				<xsl:text>home-tab-product-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
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
	</xsl:template>
</xsl:stylesheet>
