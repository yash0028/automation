# Last updated on 
@US1537712
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPast
Feature: US1537712 - Handle Rate Update Event (Fee Schedule/Rate)

  @TC743428
  @Manual
  @Functional
  Scenario: TC743428 - [RL0]
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    When an 'Rate Update' transaction is generated by Exari that includes Rate / Fee Schedule change
    Then an Optum service built to handle a 'ContractAmended' event is started
    And the service retrieves the Contract's configuration from the CMD service and stores that information in the OCM
    And the service retrieves the Contract's 'Above-the-Line' Product Groups and stores that information in the OCM
    And the service loops over every Product Group performing the following business logic:
    And the service publishes an Kafka event to proceed with this 'ContractAmended' transaction
    And the service publishes the Kafka event with OCM data as previously described

