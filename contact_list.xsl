<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- List the contacts in an HTML table -->
	<xsl:template match="/">
		<html>
			<head>
				<style>
					table {
					width: 1200px;
					align: center;
					background-color: LightGray;
					}

					h1 {
					color: orange;
					text-align: center;
					}

					tfoot {
					text-align: center;
					}
				</style>
			</head>  
			<body>
				<h1>List of Contacts</h1>
<!--
<contact_list>
	<contact>
		<lastname>Schmitt</lastname>
		<firstname>Charles</firstname>
		<identifier>CSC</identifier>
		<departement>IT - Development</departement>
		<location>Luxembourg</location>
		<phone>+352 123456-789</phone>
		<email>csc.schmitt@laposte.net</email>
	</contact>
</contact_list>
-->
				<table border="1" align="center">
					<thead>
						<tr bgcolor="#809fff">
							<th>LastName</th>
							<th>Firstname</th>
							<th>Departement</th>
							<th>Location</th>
							<th>Phone</th>
							<th>Email</th>
						</tr>	  
					</thead>

					<tfoot>
						<tr>
							<td  colspan="6">Number of entries: <xsl:value-of select="count(contact_list/contact)" />
							</td>
						</tr>
					</tfoot>					

					<tbody>
						<xsl:for-each select="contact_list/contact">
							<xsl:sort select="lastname" data-type="text"/>
							<tr>
								<td>
									<xsl:value-of select="lastname" />
								</td>
								<td>
									<a href="Charles Schmitt.contact.xml">
										<xsl:attribute name="href"><xsl:value-of select="identifier" />.xml</xsl:attribute>
										<xsl:value-of select="firstname" />
									</a>
								</td>
								<td>
									<xsl:value-of select="departement" />
								</td>				
								<td>
									<xsl:value-of select="location" />
								</td>
								<td>
									<xsl:value-of select="phone" />
								</td>
								<td>
									<xsl:value-of select="email" />
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
				<br/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

