# Last updated on 
@#Optum
@Suman
@AM-Terminations
@US1550626
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationFuture
Feature: US1550626 - Integrate search capability on Termination Process

  @TC868373
  @Manual
  @Functional
  @#Optum
  @Suman
  @AM-Terminations
  Scenario: TC868373 - [RL1]
    Given I have searched contract for defined search parameters
    When there are no results based upon the criteria
    Then an error is displayed, "There are no results based upon your input. Please try again."
