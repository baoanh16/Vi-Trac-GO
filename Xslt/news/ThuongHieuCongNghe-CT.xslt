<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="product-technology-detail">
			<div class="container">
				<div class="article-title-yl-start-normal">
					<h2>
						<xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
						<xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h2>
				</div>
				<hr class="dash-grey" />
				<xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'></xsl:value-of>
				<xsl:if test='count(/NewsDetail/NewsOther) > 0'>
					<div class="other-technology-wrapper">
						<div class="other-technology-title">
							<h2>Công nghệ khác</h2>
						</div>
						<hr class="dash-grey" />
						<div class="brand-technology-item-wrapper">
							<xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
						</div>
					</div>
				</xsl:if>
			</div>
		</section>

	</xsl:template>
	<xsl:template match='NewsOther'>
		<div class="brand-technology-item">
			<h3>
				<xsl:value-of select='Title'></xsl:value-of>
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
		</div>
	</xsl:template>
</xsl:stylesheet>