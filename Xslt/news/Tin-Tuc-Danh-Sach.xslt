<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="tab-content-wrapper">
			<div class="tab-item">
				<div class="row">
					<div class="col-lg-6">
						<div class="news-swiper-wrapper">
							<div class="swiper-container news-swiper">
								<div class="swiper-wrapper">

									<xsl:apply-templates select="/NewsList/News" mode="Slide"></xsl:apply-templates>
								</div>
							</div>
							<div class="news-button-prev">
								<em class="lnr lnr-chevron-left"></em>
							</div>
							<div class="news-button-next">
								<em class="lnr lnr-chevron-right"></em>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="news-item-side-wrapper">

							<xsl:apply-templates select="/NewsList/News" mode="Side"></xsl:apply-templates>
						</div>
					</div>
				</div>
				<div class="news-list-display">
					<div class="row news-item-wrapper">
						<xsl:apply-templates select="/NewsList/News" mode="Bottom"></xsl:apply-templates>

					</div>
				</div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="News" mode="Slide">
		<xsl:if test="position() >= 1 and position() &lt; 5">
			<div class="swiper-slide">
				<div class="watch-more-page">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:text>Xem thêm</xsl:text>
						<img src="/Data/Sites/1/media/logo.png" alt=""></img>
					</a>


				</div>
				<div class="wrapper">
					<div class="swiper-image">
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
					<div class="swiper-caption">
						<time>
							<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
						</time>
						<h2>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</a>

						</h2>

						<h3>
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</h3>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode="Side">
		<xsl:if test="position() > 4 and position() &lt; 9">
			<div class="new-item-side">
				<div class="news-item-image">
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
				<div class="news-caption">
					<p>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</a>

					</p>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Bottom">
		<xsl:if test="position() > 8 and position() &lt; 12">
			<div class="col-md-4 news-item">
				<div class="news-item-image">
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
				<div class="news-item-caption">
					<time>
						<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
					</time>
					<h4>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</a>

					</h4>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</p>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
