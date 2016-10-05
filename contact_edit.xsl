<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:c="http://schemas.microsoft.com/Contact" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:MSP2P="http://schemas.microsoft.com/Contact/Extended/MSP2P" xmlns:MSWABMAPI="http://schemas.microsoft.com/Contact/Extended/MSWABMAPI">

<xsl:template match="/">
  <html>
<style>
	label{font-weight: bold;}
	input {display: block; enabled: false;}
</style>
  
  <body>  
	<form>
		<fieldset>
			<legend>Edit contact card for <xsl:value-of select="c:contact/c:NameCollection/c:Name/c:FormattedName"/></legend>

			<label for="title">Title</label>
			<input type="text" id="title">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:NameCollection/c:Name/c:Title"/></xsl:attribute>
			</input>
			
			<label for="firstname">Firstname</label>
			<input type="text" id="firstname">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:NameCollection/c:Name/c:GivenName"/></xsl:attribute>
			</input>
			<label for="lastname">Lastname</label>
			<input type="text" id="lastname">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:NameCollection/c:Name/c:FamilyName"/></xsl:attribute>
			</input>
			<label for="identifier">Identifier</label><!-- Use the NickName as the Identifier -->
			<input type="text" id="identifier">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:NameCollection/c:Name/c:NickName"/></xsl:attribute>
			</input>

			<label for="JobTitle">JobTitle</label>
			<input type="text" id="jobTitle">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:PositionCollection/c:Position/c:JobTitle"/></xsl:attribute>
			</input>

			<label for="department">Department</label>
			<input type="text" id="department">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:PositionCollection/c:Position/c:Department"/></xsl:attribute>
			</input>

			<label for="company">Company</label>
			<input type="text" id="company">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:PositionCollection/c:Position/c:Company"/></xsl:attribute>
			</input>

			<label for="Location">Location</label>
			<input type="text" id="Location">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:PhysicalAddressCollection/c:PhysicalAddress[c:LabelCollection/c:Label='Business']/c:Country"/></xsl:attribute>
			</input>

			<label for="emailaddress">Email address</label>
			<input type="text" id="emailaddress">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:EmailAddressCollection/c:EmailAddress[c:LabelCollection/c:Label='Preferred']/c:Address"/></xsl:attribute>
			</input>

			<label for="phone">Phone number</label>
			<input type="text" id="phone">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:PhoneNumberCollection/c:PhoneNumber[c:LabelCollection/c:Label='Business' and c:LabelCollection/c:Label='Voice']/c:Number"/></xsl:attribute>
			</input>
			
			<!--pagers are not used any more so turn it to VOIP field -->
			<label for="voip">VOIP number</label>
			<input type="text" id="voip">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:PhoneNumberCollection/c:PhoneNumber[c:LabelCollection/c:Label='Pager']/c:Number"/></xsl:attribute>
				</input>

			<label for="mobile">Mobile number</label>
			<input type="text" id="mobile">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:PhoneNumberCollection/c:PhoneNumber[c:LabelCollection/c:Label='Cellular']/c:Number"/></xsl:attribute>
			</input>

<!-- Even if not Editable in the default Windows Contact application, the Windows Contact Schema Allows Person elements with dedicated labels for that use
Person Labels : The following labels can be associated with Person elements. Some of these labels are specific to the Microsoft Windows Address Book (WAB).
-->

<!-- CONTACTLABEL_PUB_AGENT L"Agent" This person is allowed to work on behalf of the contact -->
			<label for="backup">Back-up</label>
			<input type="text" id="backup">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:PersonCollection/c:Person[c:LabelCollection/c:Label='Agent']/c:FormattedName"/></xsl:attribute>
			</input>
<!-- CONTACTLABEL_WAB_MANAGER L"wab:Manager" The contact's manager -->
			<label for="manager">Manager</label>
			<input type="text" id="manager">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:PersonCollection/c:Person[c:LabelCollection/c:Label='wab:Manager']/c:FormattedName"/></xsl:attribute>
			</input>
<!--CONTACTLABEL_WAB_ASSISTANT L"wab:Assistant" The contact's personal assistant -->
			<label for="assistant">Secretary / Assistance</label>
			<input type="text" id="assistant">
				<xsl:attribute name="value"><xsl:value-of select="c:contact/c:PersonCollection/c:Person[c:LabelCollection/c:Label='wab:Assistant']/c:FormattedName"/></xsl:attribute>
			</input>
		</fieldset>
		</form>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>