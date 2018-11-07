# Last updated on 
@US1126513
@2018.PI04
@2018.PI04.02
@MVP
@Plus
@Priority_2
@Parity
@releasePresent
@iterationPast
Feature: US1126513 - [Continued] Exari >NDB Facility/Ancillary - Medical Necessity API Java Layer

  @TC564417
  @Automated
  @Functional
  Scenario: TC564417 - [RL0]
    Given - The Facility contract provider(s) cancel is complete and correct within Exari
    When - The contract is included in the Exari Facility Contract ETL to NDB
    Then - NDB should cancel the provider(s) contract to the 'E' PNC contract screen successfully within NDB

