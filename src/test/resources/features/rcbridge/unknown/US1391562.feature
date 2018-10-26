# Last updated on 
@US1391562
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391562 - SMGA Remove TIN from Contract

  @TC616931
  @Manual
  @Functional
  @US1391562
  Scenario: TC616931 - [RL0]
    Given I am a User with access to maintain Contract information
    When I need to remove a TIN from a SMGA Contract
    Then I have the ability to remove a TIN from a SMGA Contract
