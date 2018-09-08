# Last updated on 
@US1285457
@2018.PI03
Feature: US1285457 - Implement PROS fee schedule API

  @TC572200
  @Automated
  @Functional
  Scenario: TC572200 - [RL1]
    Given the fee-schedule api internal service is ready
    When we make a call to the service with invalid fee-schedule-id to get the fee-schedule information from PROS API
    Then exception should be thrown

  @TC565041
  @Automated
  @Functional
  Scenario: TC565041 - [RL0]
    Given the fee-schedule api internal service is ready
    When we make a call to the service to get the fee-schedule information from PROS API
    Then the fee-schedule information is received

