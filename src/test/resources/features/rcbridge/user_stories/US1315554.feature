# Last updated on 
@US1315554
@2018.PI04
Feature: US1315554 - View Contract ProductGroup Rate Conditions

  @TC573556
  @Automated
  @Functional
  Scenario: TC573556 - [RL0]
    Given a contract productgroup rate condition exists on a contract
    When the productgroup rate conditions have been recorded in the CMD database
    Then the productgroup rate conditions are available through a web UI

