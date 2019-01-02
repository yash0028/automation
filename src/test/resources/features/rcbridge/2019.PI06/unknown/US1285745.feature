# Last updated on 
@US1285745
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1285745 - Synchronize Updated MPIN

  @TC564626
  @Automated
  @Functional
  Scenario: TC564626 - [RL0]
    Given I am the Entity Management Solution
    When a MPIN is updated in a Legacy Application
    And the MPIN also resides in the Entity Management Solution
    Then the matching record in the Entity Management Solution is updated to reflect the change
    And effective and expiration dates are updated in the Entity Management Solution
