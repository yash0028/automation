# Last updated on 
@RC_invalid
@CMD
@US1319551
@releaseUnknown
@iterationUnknown
Feature: US1319551 - NDB Contract Master Validation Set (Type 2 error resolution)

  @TC576409
  @Manual
  @Functional
  @RC_invalid
  @CMD
  Scenario: TC576409 - [RL0]
    Given a valid contract event is published by Exari
    When contract configuration errors have been resolved
    And the contract includes UNET or COSMOS product groups
    Then contract master related validation review is performed against the OCM prior to publishing the transaction event

