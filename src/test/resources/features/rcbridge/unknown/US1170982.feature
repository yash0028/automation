# Last updated on 
@MVP
@CLM_UAT
@EXARI-11270
@US1170982
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1170982 - Retained Relationships

  @TC564494
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11270
  Scenario: TC564494 - [RL0]
    Given I am the Entity Management Solution
    When an Entity is reactivated
    Then all relationships previously associated with that Entity are visible
    And all relationships remain inactive until updated by a User

