# Last updated on 
@MVP
@EXARI-11267
@EXARI-11249
@CLM_UAT
@US1193286
Feature: US1193286 - Capture Reason for Reactivation

  @TC565269
  @Automated
  @Functional
  Scenario: TC565269 - [RL0]
    Given I am a User
    When I am reactivating an Entity
    Then I am required to provide a reason for reactivating the Entity prior to completing the reactivation
