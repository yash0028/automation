# Last updated on 
@MSPS
@US1261012
@2018.PI03
@2018.PI03.02
Feature: US1261012 - [Unfinished] Create External Data Query - Facility MSPS

  @TC543545
  @Manual
  @Acceptance
  Scenario: TC543545 - [RL0] Create External Data Query - Facility MSPS(Happy Path Validation)
    When connecting to the MSPS service from Exari with a fee schedule number for a facility
    Then I receive the needed data in a zip file from the MSPS service.
