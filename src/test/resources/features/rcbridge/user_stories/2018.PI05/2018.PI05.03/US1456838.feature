# Last updated on 
@US1456838
@2018.PI05
@2018.PI05.03
@releasePast
@iterationPast
Feature: US1456838 - [SPIKE]Serialize Contract Updates

  @TC663203
  @Manual
  @Functional
  Scenario Outline: TC663203 - [RL0]
    Given the two contracting events from Exari at the same time
    When the analysis on the two contracting events from Exari at the same time is completed
    Then the detailed development design document is created.
    ####
    Given that 2 contracting events are submitted from Exari on the same contract at the same time
    When the first contract event generates a Type 1 Contract Master error
    Then the second contract event is queued until the Contract Master error on the first Contract Installation event has been successfully remediated
    And then the second contract event to update a roster is successfully processed
    Examples:
      |   |   |
      |   |   |

