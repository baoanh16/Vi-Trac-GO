<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() =1">

			<section class="employee-applicant">
				<div class="container">
					<div class="article-title-yl-start-upper">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
					</div>
					<hr class="dash-grey"></hr>
					<div class="row">
						<xsl:apply-templates select="News" mode="Info"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() =2">

			<section class="working-condition">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="News" mode="Figure"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Info">
		<div class="col-lg-6">
			<article>
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</article>
		</div>
		<div class="col-lg-6">
			<article>
				<div class="article-image">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</article>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Figure">
		<div class="col-sm-6 col-lg-4">
			<figure>
				<div class="figure-image">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="logo-yellow-button">
					<img src="/Data/Sites/1/media/logo.png" alt=""></img>
				</div>
				<figcaption>
					<h3>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h3>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>

	</xsl:template>
</xsl:stylesheet>
