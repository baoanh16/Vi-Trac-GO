<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/BannerList/Banner) > 0">

			<section class="vt-banner">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">

			<a target="_blank">
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
				</xsl:attribute>
				<div class="swiper-image">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="swiper-content">
					<h1>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h1>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</p>
				</div>
			</a>
		</div>


	</xsl:template>

</xsl:stylesheet>
