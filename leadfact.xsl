<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output indent="yes"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="/">
    <Leads>
      <xsl:apply-templates select="descendant::LeadData"/>
    </Leads>
  </xsl:template>
  
  <xsl:template match="LeadData">
      <xsl:copy>
        <xsl:copy-of select="ancestor::Waveform/*[name()!='LeadData']"/>
        <xsl:copy-of select="ancestor::RestingECG/MuseInfo/*"/>
        <xsl:copy-of select="ancestor::RestingECG/PatientDemographics/*"/>
        <xsl:copy-of select="ancestor::RestingECG/TestDemographics/*"/>
        <xsl:copy-of select="ancestor::RestingECG/Order/*"/>
        <xsl:copy-of select="ancestor::RestingECG/RestingECGMeasurements/*"/>
        <xsl:copy-of select="ancestor::RestingECG/MeasurementMatrix"/>
        <xsl:copy-of select="ancestor::RestingECG/PharmaData/*"/>
        <xsl:copy-of select="*"/>
      </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>
