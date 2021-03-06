# Last updated on 
@Provider_Demographics
@PES
@US977596
@2018.PI01
@2018.PI01.02
@releasePast
@iterationPast
Feature: US977596 - (Provider) Create a microservice to connect to PES

  @TC923004
  @Manual
  @Functional
  @Provider_Demographics
  @PES
  Scenario: TC923004 - [RL0]
    Given that a user wants to get provider details from PES service
    When a request is sent with MPN andTIN to CLM microservice
    Then provider details will be returned to user

  @TC923023
  @Manual
  @Functional
  @Provider_Demographics
  @PES
  Scenario: TC923023 - [RL0]
    Given that a user wants to get provider details from PES service
    When a request is sent with MPN andTIN to CLM microservice
    Then provider details will be returned to user

  @TC565840
  @Manual
  @Functional
  @Provider_Demographics
  @PES
  Scenario: TC565840 - [RL0]
    Given that a user wants to get provider details from PES service
    When a request is sent with MPN andTIN to CLM microservice
    Then provider details will be returned to user

