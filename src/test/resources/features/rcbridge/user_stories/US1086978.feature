# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@US1086978
@2018.PI03
Feature: US1086978 - Update NPI

  @TC564382
  @Automated
  @Functional
  Scenario: TC564382 - [RL0]
    Given I am the Entity Management Solution
    When the NPI is updated in NDB
    And the NPI exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated NPI is available in the Entity Management Solution
