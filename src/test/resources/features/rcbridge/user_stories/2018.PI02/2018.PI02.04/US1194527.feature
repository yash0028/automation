# Last updated on 
@US1194527
@2018.PI02
@2018.PI02.04
Feature: US1194527 - [Unfinished] PIC Implementation

  @TC565876
  @Automated
  @Functional
  Scenario: TC565876 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @TC565875
  @Automated
  @Functional
  Scenario: TC565875 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @TC565877
  @Automated
  @Functional
  Scenario: TC565877 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

