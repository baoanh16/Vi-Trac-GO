<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="product-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="product-swiper-wrapper">
							<div class="product-top-wrapper">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Top"></xsl:apply-templates>
									</div>
								</div>
							</div>
							<div class="product-thumbs-wrapper">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Thumb"></xsl:apply-templates>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="product-information-wrapper">
							<div class="product-name">
								<h2>
									<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
									<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h2>
							</div>
							<hr class="dash-green" />
							<xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
							<div class="bottom-button-wrapper">
								<div class="check-out-button">
									<a href="javascript:void(0)" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
										<xsl:attribute name="data-productid">
											<xsl:value-of select="ProductId"></xsl:value-of>
										</xsl:attribute>
										<xsl:text>Liên hệ</xsl:text>
										<em class="lnr lnr-arrow-right"></em>
									</a>
								</div>
								<div class="social-network-wrapper">
									<div class="social-network-item">
										<a target="_blank">
											<xsl:attribute name="href">
												<xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
												<xsl:value-of select="/ProductDetail/FullUrl"></xsl:value-of>
											</xsl:attribute>
											<em class="fab fa-facebook-f"></em>
										</a>
									</div>
									<div class="social-network-item">
										<a target="_blank">
											<xsl:attribute name="href">
												<xsl:text>https://twitter.com/share?url=</xsl:text>
												<xsl:value-of select="/ProductDetail/FullUrl"></xsl:value-of>
											</xsl:attribute>
											<em class="fab fa-twitter"></em>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="product-faq-wrapper">
							<div class="product-title-grey">
								<h3>
									<xsl:value-of select="/ProductDetail/ProductAttributes[position() = 1]/Title" disable-output-escaping="yes" />
								</h3>
								<hr class="dash-grey" />
							</div>
							<xsl:value-of select="/ProductDetail/ProductAttributes[position() = 1]/Content" disable-output-escaping="yes" />
						</div>
					</div>
					<div class="col-lg-6">
						<div class="product-size-wrapper">
							<div class="product-title-grey">
								<h3>
									<xsl:value-of select="/ProductDetail/ProductAttributes[position() = 2]/Title" disable-output-escaping="yes" />
								</h3>
								<hr class="dash-grey" />
							</div>
							<xsl:value-of select="/ProductDetail/ProductAttributes[position() = 2]/Content" disable-output-escaping="yes" />
						</div>
					</div>
				</div>
				<div class="tab-content-wrapper">
					<ul>
						<li class="active">
							<a href="javascript:void(0)" data-type="tab-1">
								<xsl:value-of select="/ProductDetail/ProductAttributes[position() = 3]/Title" disable-output-escaping="yes" />
							</a>
						</li>
						<li>
							<a href="javascript:void(0)" data-type="tab-2">
								<xsl:value-of select="/ProductDetail/ProductAttributes[position() = 4]/Title" disable-output-escaping="yes" />
							</a>
						</li>
					</ul>
					<hr class="dash-grey" />
					<div class="tab-wrapper">
						<div class="tab-item active" id="tab-1">
							<xsl:value-of select="/ProductDetail/ProductAttributes[position() = 3]/Content" disable-output-escaping="yes" />
						</div>
						<div class="tab-item" id="tab-2">
							<xsl:value-of select="/ProductDetail/ProductAttributes[position() = 4]/Content" disable-output-escaping="yes" />
						</div>
					</div>
				</div>
				<div class="other-product-wrapper">
					<div class="product-title-yl-start">
						<h3>Sản phẩm khác</h3>
					</div>
					<hr class="dash-grey" />
					<div class="product-item-wrapper">
						<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="ProductImages" mode="Top">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="swiper-image">
					<img class="medium-zoom">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="ProductImages" mode="Thumb">
		<div class="swiper-slide">
			<div class="wrapper">
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
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductOther">
		<div class="product-item">
			<div class="wrapper">
				<div class="product-image">
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
				</div>
				<div class="product-caption">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
