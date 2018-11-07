# Last updated on 
@MVP
@CLM_UAT
@US1116732
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1116732 - Expire Account Type

  @TC564545
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC564545 - [RL0]
    Given I am an Administrative User
    When I need to expire an AccountType
    Then I can expire an existing Account Type
    And Users can no longer select that Account Type to define an Entity
    And all records using that Account Type retain the historical value

