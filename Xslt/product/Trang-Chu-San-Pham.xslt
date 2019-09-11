<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="product-child-content-wrapper-swiper">
			<div class="product-child-content active">
				<div class="product-child-content-item ">
					<div class="row-5">

						<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>


					</div>
				</div>
			</div>
		</div>
		<div class="vt-button">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="/ProductList/ZoneUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:text>Xem thêm</xsl:text>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="Product">
		<div class="w-20">
			<figure>
				<div class="image">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
					<xsl:choose>
						<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
							<div class="promotion op1">
								<span>
									Mới
								</span>
							</div>
						</xsl:when>
						<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
							<span class="promotion op2">
								Khuyến mãi
							</span>
						</xsl:when>
					</xsl:choose>
				</div>
				<figcaption>
					<h4>
						<a>
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</a>
					</h4>
					<h5>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
					</h5>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>
