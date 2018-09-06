# Last updated on 
@Provider_Demographics
@PES
@US978386
@2018.PI01
Feature: US978386 - [Spike] (Provider) Evaluate what PES APIs are required for Provider service

  @TC565461
  @Automated
  @Functional
  Scenario: TC565461 - [RL0]
    Given that PES has many API's
    When we call those APIs, we need to understand what can be returned
    Then the development team should understand the PES APIs.
