<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:c="http://schemas.microsoft.com/Contact" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:MSP2P="http://schemas.microsoft.com/Contact/Extended/MSP2P" xmlns:MSWABMAPI="http://schemas.microsoft.com/Contact/Extended/MSWABMAPI">

	<xsl:template match="/">
		<html>
			<body>  
				<h2>Contact Details for <xsl:value-of select="c:contact/c:NameCollection/c:Name/c:FormattedName"/>
				</h2>
				<pre>
Title : <xsl:value-of select="c:contact/c:NameCollection/c:Name/c:Title"/>
Last Name : <xsl:value-of select="c:contact/c:NameCollection/c:Name/c:FamilyName"/>
First Name : <xsl:value-of select="c:contact/c:NameCollection/c:Name/c:GivenName"/>
Identifier : <xsl:value-of select="c:contact/c:NameCollection/c:Name/c:NickName"/>
Job Title : <xsl:value-of select="c:contact/c:PositionCollection/c:Position/c:JobTitle"/>
Department : <xsl:value-of select="c:contact/c:PositionCollection/c:Position/c:Department"/>
Company : <xsl:value-of select="c:contact/c:PositionCollection/c:Position/c:Company"/>
Location : <xsl:value-of select="c:contact/c:PhysicalAddressCollection/c:PhysicalAddress[c:LabelCollection/c:Label='Business']/c:Country"/>
Email address : <a>
						<xsl:attribute name="href">mailto:<xsl:value-of select="c:contact/c:EmailAddressCollection/c:EmailAddress[c:LabelCollection/c:Label='Preferred']/c:Address"/>
						</xsl:attribute>
						<xsl:value-of select="c:contact/c:EmailAddressCollection/c:EmailAddress[c:LabelCollection/c:Label='Preferred']/c:Address"/>
					</a>
Phone number : <xsl:value-of select="c:contact/c:PhoneNumberCollection/c:PhoneNumber[c:LabelCollection/c:Label='Business' and c:LabelCollection/c:Label='Voice']/c:Number"/>
					<!--pagers are not used any more so turn it to VOIP field -->
VOIP number : <xsl:value-of select="c:contact/c:PhoneNumberCollection/c:PhoneNumber[c:LabelCollection/c:Label='Pager']/c:Number"/>
Mobile number : <xsl:value-of select="c:contact/c:PhoneNumberCollection/c:PhoneNumber[c:LabelCollection/c:Label='Cellular']/c:Number"/>
					<!-- Even if not Editable in the default Windows Contact application, the Windows Contact Schema Allows Person elements with dedicated labels for that use
Person Labels : The following labels can be associated with Person elements. Some of these labels are specific to the Microsoft Windows Address Book (WAB). -->

					<!-- CONTACTLABEL_PUB_AGENT L"Agent" This person is allowed to work on behalf of the contact -->
Back-up : <xsl:value-of select="c:contact/c:PersonCollection/c:Person[c:LabelCollection/c:Label='Agent']/c:FormattedName"/>
					<!-- CONTACTLABEL_WAB_MANAGER L"wab:Manager" The contact's manager -->
Manager : <xsl:value-of select="c:contact/c:PersonCollection/c:Person[c:LabelCollection/c:Label='wab:Manager']/c:FormattedName"/>
					<!--CONTACTLABEL_WAB_ASSISTANT L"wab:Assistant" The contact's personal assistant -->
Secretary / Assistance : <xsl:value-of select="c:contact/c:PersonCollection/c:Person[c:LabelCollection/c:Label='wab:Assistant']/c:FormattedName"/>
				</pre>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>