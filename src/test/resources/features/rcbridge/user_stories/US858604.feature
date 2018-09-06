# Last updated on 
@EXARI-11271
@US858604
@2018.PI03
Feature: US858604 - Approve Entity Updates

  @TC565496
  @Automated
  @Functional
  Scenario: TC565496 - [RL0]
    Given I am a User with Approval Authority
    When I receive an Entity modification that requires my approval
    Then I can review the proposed modification
    And I can approve the proposed modification
    And The Entity record is updated with the new value(s)
