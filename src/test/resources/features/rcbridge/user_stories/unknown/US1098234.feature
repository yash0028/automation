# Last updated on 
@US1098234
Feature: US1098234 - Migrate DLGT CDs and Descriptions

  @TC565969
  @Automated
  @Functional
  Scenario: TC565969 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view DLGT CDs and Descriptions that were previously located in NDB
    Then I can view DLGT CDs and Descriptions in the Entity Management Solution
