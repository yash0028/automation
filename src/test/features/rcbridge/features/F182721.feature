# Last updated on 2018-07-05T16:26:52.948Z
@MVP
@Plus
@Priority_2
@Parity
Feature: F182721 - Exari>NDB/COSMOS Physician - NDB Demographic update/Panel update - Analysis

  @CLM_UAT
  @2018.PI03
  @2018.PI03.03
  Scenario: US1086310
    Given the NDB COSMOS panel was created by Exari
    When an updated is attempted in NDB on the Panel through what NDB business considers a demographic update
    Then NDB will need to work with Exari business leaders and NDB business leaders to figure out if the panel is updated and sent to COSMOS along with the updated demographics

