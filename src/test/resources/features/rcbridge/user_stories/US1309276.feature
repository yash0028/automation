# Last updated on 
@US1309276
@2018.PI03
Feature: US1309276 - Debug OAuth issue with external library

  @TC569177
  @Manual
  @Functional
  Scenario: TC569177 - [RL0]
    Given an issue with OAuth in the external library
    When using the external data queries
    Then the connection is successful
    And our services communicate data back to Exari

