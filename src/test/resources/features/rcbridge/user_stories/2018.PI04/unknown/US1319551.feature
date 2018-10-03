# Last updated on 
@CMD
@US1319551
@2018.PI04
Feature: US1319551 - NDB Contract Master Validation Set

  @TC576409
  @Manual
  @Functional
  Scenario: TC576409 - [RL0]
    Given a valid contract event is published by Exari
    When contract configuration errors have been resolved
    Then contract master related validation review is performed against the OCM prior to publishing the transaction event
