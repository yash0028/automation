# Last updated on 
@US1450697
@2018.PI05
@releasePresent
@iterationUnknown
Feature: US1450697 - Calculate disposition - NAR Physician using AM, 1/1 effective date

  @TC651738
  @Manual
  @Functional
  Scenario Outline: TC651738 - [RL0]
    Given a workflow exists
    When it is submitted for load
    Then the "Timeliness Disposition" is calculated
    Examples:
      |
      |

