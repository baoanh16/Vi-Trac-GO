<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="news-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<article>
							<h2>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
							</h2>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							<hr class="dash-grey"></hr>
							<h3>
								<xsl:value-of disable-output-escaping="yes" select="NewsDetail/BriefContent"></xsl:value-of>
							</h3>
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
						</article>
						<div class="social-network-wrapper">

							<div class="social-network-button">
								<div class="fb-share-button" data-layout="button_count" data-size="small">
									<a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">
										Share
										<xsl:attribute name="data-href">
											<xsl:value-of select="/NewsDetail/FullUrl"></xsl:value-of>
										</xsl:attribute>
									</a>
								</div>
							</div>
							<div class="social-network-button">
								<div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-width="" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="false"></div>
							</div>
							<div class="social-network-button">
								<a class="twitter-share-button">
									<xsl:attribute name="href">
										<xsl:value-of select="/NewsDetail/FullUrl"></xsl:value-of>
									</xsl:attribute>
									Tweet
								</a>
							</div>

						</div>
					</div>
					<div class="col-lg-3">
						<div class="other-news-wrapper">
							<div class="article-title-news-yl">
								<h2>
									<xsl:text>Bài viết khác</xsl:text>
								</h2>
							</div>
							<div class="other-news-article-wrapper">

								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="other-news">
			<div class="news-image">
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
				<time>
					<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
				</time>
				<p>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
