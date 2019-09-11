<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="product-brand-article">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<article>
							<xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'></xsl:value-of>
							<xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
						</article>
					</div>
					<div class="col-lg-6">
						<article>
							<div class="article-image">
								<img>
								<xsl:attribute name='src'>
									<xsl:value-of select='/NewsDetail/NewsImages[position() = 1]/ImageUrl'>
									</xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name='alt'>
									<xsl:value-of select='/NewsDetail/NewsImages[position() = 1]/Title'></xsl:value-of>
								</xsl:attribute>
								</img>
							</div>
						</article>
					</div>
				</div>
			</div>
		</section>
		<section class="product-brand-swiper">
			<div class="container">
				<div class="product-brand-wrapper">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select='/NewsDetail/NewsImages'></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match='NewsImages'>
		<xsl:if test='position() > 1'>
			<div class="swiper-slide">
				<div class="wrapper">
					<div class="swiper-image">
						<a href="#" target="_blank">
							<xsl:attribute name='href'>
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
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>