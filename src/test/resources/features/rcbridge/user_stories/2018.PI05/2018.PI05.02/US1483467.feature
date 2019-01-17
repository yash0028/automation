# Last updated on 
@CMD
@contract-config-service
@US1483467
@2018.PI05
@2018.PI05.02
@releasePresent
@iterationPast
Feature: US1483467 - Implement contract config api “providerproductstatus” with contractID,TIN,MPIN and productgroup parameters.

  @TC674586
  @Automated
  @Functional
  @CMD
  @contract-config-service
  Scenario Outline: TC674586 - [RL0] Verify provider product status
    Given a valid contract installation transaction has been received from Exari
    When the contract configuration api is invoked with the following data
      | contractID     | <contractID>   |
      | mpin           | <mpin>         |
      | tin            | <tin>          |
      | npi            | <npi>          |
      | productGroup   | <productGroup> |
    Then the contract configuration api includes provider product status data
    Examples:
      | contractID   | mpin         | tin          | npi          | productGroup |
      | 96026180     | 002856515    | 261307881    | 1023292885   | MEDADV       |
