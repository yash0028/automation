# Last updated on 
@US1222431
@MVP
@Priority_4
@releaseUnknown
@iterationUnknown
Feature: US1222431 - Update UHC ID

  @TC564597
  @Automated
  @Functional
  Scenario: TC564597 - [RL0]
    Given I am the Entity Management Solution
    When the UHC ID is updated in NDB
    And the UHC ID exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated UHC ID is available in the Entity Management Solution

