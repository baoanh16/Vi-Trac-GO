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
		<xsl:apply-templates select="Zone" mode="Zone1"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone1">
		<div class="product-status-tab">
			<xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
		</div>
		<div class="product-status-content">
			<xsl:apply-templates select="Zone" mode="Zone2TabContent"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2">

		<div class="product-status-tab-item">
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text> product-status-tab-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="data-status">
				<xsl:text>status-</xsl:text>
				<xsl:value-of select="ZoneId"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2TabContent">
		<div class="product-status-content-item">
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text> product-status-content-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="data-status">
				<xsl:text>status-</xsl:text>
				<xsl:value-of select="ZoneId"></xsl:value-of>
			</xsl:attribute>
			<div class="product-child-mobile-toggle">Danh sách</div>
			<div class="product-child-tab">
				<xsl:apply-templates select="Zone" mode="Zone3"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3">
		<a class="product-child-tab-item">
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
	</xsl:template>
</xsl:stylesheet>
