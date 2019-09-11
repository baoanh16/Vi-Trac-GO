<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="product-brand-technology">
			<div class="container">
				<div class="brand-technology-top-wrapper">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					<!-- <div class="brand-technology-title-upper">
							<h2>
									<xsl:value-of select='/ZoneList/Title'></xsl:value-of>
								</h2>
					</div>
					<div class="brand-navigation">
						<ul>
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
						</ul>
					</div> -->
				</div>
				<hr class="dash-grey" />
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2">
		<xsl:if test="IsActive = 'true'">
			<div class="brand-technology-title-upper">
				<div class="brand-image-logo">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="brand-navigation">
				<ul>
					<xsl:apply-templates select="Zone" mode="Zone3"></xsl:apply-templates>
				</ul>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3">
		<li>
			<xsl:if test="IsActive = 'true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
