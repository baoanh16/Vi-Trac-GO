<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="job-list-table">
			<div class="container">
				<div class="article-title-yl-center-upper">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
					</h2>
				</div>
				<table class="table">
					<thead class="header">
						<tr></tr>
						<th>STT</th>
						<th>Vị trí tuyển dụng</th>
						<th>Số lượng</th>
						<th>Hạn nộp hồ sơ</th>
					</thead>
					<tbody>

						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</tbody>
				</table>
			</div>
		</section>

	</xsl:template>
	<xsl:template match="News">
		<tr>
			<th></th>
			<td attribute="Chức vụ">
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
			</td>
			<td attribute="Số lượng">
				<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
			</td>
			<td attribute="Hạn nộp hồ sơ">
				<time>
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</time>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
