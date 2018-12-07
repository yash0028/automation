# Last updated on 
@CLM_UAT
@EXARI-11792
@US1152174
@releaseUnknown
@iterationUnknown
Feature: US1152174 - Entity Type Conflict - PHO and IPA

  @TC565476
  @Automated
  @Functional
  @CLM_UAT
  @EXARI-11792
  Scenario: TC565476 - [RL0]
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the parent Entity can be either IPA or PHO but not both
    And a PHO parent could have multiple IPA children
    And an IPA parent generally would not have PHO as a child

