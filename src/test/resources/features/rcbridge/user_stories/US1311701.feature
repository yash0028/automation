# Last updated on 
@MVP
@US1311701
@2018.PI04
Feature: US1311701 - Med Nec clause table audit trail  - Facility

  @TC572191
  @Automated
  @Functional
  Scenario: TC572191 - [RL0]
    Given the med nec clause code record has been updated in the table
    When the update has been recorded in CMD
    Then audit information is recorded and available
