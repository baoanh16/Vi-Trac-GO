<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="product-brand-technology" style="padding: 0">
			<div class="container">
				<div class="brand-technology-item-wrapper">
					<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match='News'>
		<div class="brand-technology-item">
			<h3>
				<a>
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='title'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select='Title'></xsl:value-of>
				</a>
				<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
			</h3>
			<div class="item-image">
				<a>
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='title'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
			</div>
			<p>
				<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
			</p>
		</div>
	</xsl:template>
</xsl:stylesheet>