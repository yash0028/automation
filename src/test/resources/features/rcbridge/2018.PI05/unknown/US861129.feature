# Last updated on 
@US861129
@2018.PI05
@MVP
@Priority_1
@Parity
@releasePresent
@iterationUnknown
Feature: US861129 - NDAR_Exari_Payer_Benefit_Plans_YYYYMMDD

  @TC565941
  @Automated
  @Functional
  Scenario: TC565941 - [RL0]
    Given that the required fields for NDAR file are pulled
    When extracting the Data from Exari,
    Then the required fields that meet selection criteria are extracted from Exari and returned in the proper file format.
    And the file extract is sent to the desired location
    And if there is a problem with file or the file is not in the desired location at designated time, email notification will be sent to vendor.
