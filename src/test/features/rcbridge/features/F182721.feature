# Last updated on 2018-05-24T11:22:54.502Z
@MVP
@Plus
@Parity
Feature: F182721 - Exari>NDB/COSMOS Physician - NDB Demographic update/Panel update - Analysis

  @2018.PI02
  @2018.PI02.04
  Scenario: US1086280
    Given NDB CF team Completes this analysis
    When we discuss the finding
    Then we will be able to access lock down of Panel records in NDB from Exari in relation to a demographic change

  @2018.PI02
  @2018.PI02.04
  Scenario: US1086310
    Given the NDB COSMOS panel was created by Exari
    When an updated is attempted in NDB on the Panel through what NDB business considers a demographic update
    Then NDB will need to work with Exari business leaders and NDB business leaders to figure out if the panel is updated and sent to COSMOS along with the updated demographics

