<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:c="http://schemas.microsoft.com/Contact" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:MSP2P="http://schemas.microsoft.com/Contact/Extended/MSP2P" xmlns:MSWABMAPI="http://schemas.microsoft.com/Contact/Extended/MSWABMAPI">

<xsl:template match="/">
<contact>
<lastname><xsl:value-of select="c:contact/c:NameCollection/c:Name/c:FamilyName"/></lastname>
<firstname><xsl:value-of select="c:contact/c:NameCollection/c:Name/c:GivenName"/></firstname>
<identifier><xsl:value-of select="c:contact/c:NameCollection/c:Name/c:NickName"/></identifier>
<departement><xsl:value-of select="c:contact/c:PositionCollection/c:Position/c:Department"/></departement>
<location><xsl:value-of select="c:contact/c:PhysicalAddressCollection/c:PhysicalAddress[c:LabelCollection/c:Label='Business']/c:Country"/></location>
<phone><xsl:value-of select="c:contact/c:PhoneNumberCollection/c:PhoneNumber[c:LabelCollection/c:Label='Business' and c:LabelCollection/c:Label='Voice']/c:Number"/></phone>
<email><xsl:value-of select="c:contact/c:EmailAddressCollection/c:EmailAddress[c:LabelCollection/c:Label='Preferred']/c:Address"/></email>
</contact>
</xsl:template>
</xsl:stylesheet>