

<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:template match="/">
		<table id="menuTable" border="1" class="indent">
			<thead>
				<tr>
				<!-- change the header rows -->
					<th>Select. </th>
					<th>Phone. </th>
					<th>Price. </th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="//category">
					<tr>
						<td colspan="3">
							<xsl:value-of select="@name" />
						</td>
					</tr>
					<xsl:for-each select="Phones">
						<tr id="{position()}">
						
							</xsl:attribute>
							<td align="center">
								<input name="item0" type="checkbox" />
							</td>
							
							<td>
								<xsl:value-of select="product" />
							</td>
							<td align="right">
								<xsl:value-of select="price" />
							</td>
							<td>
								<!-- This code is from stackoverflow (in Portuguese): https://pt.stackoverflow.com/questions/11322/como-exibir-imagens-com-xsl-com-a-src-da-img-do-arquivo-xml  
								Starts here -->
								
								<xsl:for-each select="Image">
									<image width="150" height="200">
									<xsl:attribute name="src">
										<xsl:value-of select="."/>
									</xsl:attribute>
									</image>
								</xsl:for-each>
								<!--Finish here-->
							</td>
						</tr>
					</xsl:for-each>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:transform>
