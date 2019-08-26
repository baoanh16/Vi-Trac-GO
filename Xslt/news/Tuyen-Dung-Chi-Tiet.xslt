<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="job-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<article>
							<h2>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<hr class="dash-grey"></hr>
							<div class="job-requirement-wrapper">
								<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
							</div>
							<hr class="dash-grey" />
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
							<div class="job-apply-button-wrapper">
								<div class="apply-button">
									<a href="javascript:void(0)">Nộp hồ sơ</a>
								</div>
							</div>
							<div class="form-apply">
								<iframe>
									<xsl:attribute name="src">
										<xsl:value-of select="/NewsDetail/ApplyUrl"></xsl:value-of>
									</xsl:attribute>
								</iframe>
							</div>
						</article>
					</div>
					<div class="col-lg-3">
						<div class="other-vacancy-wrapper">
							<div class="other"></div>
							<div class="article-title-job-yl">
								<h2>Tuyển dụng khác</h2>
							</div>
							<div class="bg-wrapper-job">

								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<div class="job-requirement-item">
			<div class="icon"></div>
			<div class="title">
				<p>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</p>
			</div>
			<div class="caption">
				<p>
					<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="other-vacancy">
			<h3>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</a>
			</h3>
			<time>
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</time>
		</div>
	</xsl:template>
</xsl:stylesheet>
