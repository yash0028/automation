# Last updated on 
@EXARI-11249
@EXARI-11267
@CLM_UAT
@US1170981
@MVP
@Priority_4
@releaseUnknown
@iterationUnknown
Feature: US1170981 - Reactivate Entity

  @TC565212
  @Automated
  @Functional
  @EXARI-11249
  @EXARI-11267
  @CLM_UAT
  Scenario: TC565212 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to reactivate an inactive Entity
    Then I can search for the Entity
    And I can reactivate the Entity

