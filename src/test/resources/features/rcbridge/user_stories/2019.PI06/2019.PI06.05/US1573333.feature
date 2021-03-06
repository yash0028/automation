# Last updated on 
@US1573333
@2019.PI06
@2019.PI06.05
@releasePast
@iterationPast
Feature: US1573333 - Handle Contract Update Event - OCM products determination logic (Add Product)

  @TC743384
  @Manual
  @Functional
  Scenario: TC743384 - [RL0]
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    When an 'ContractAmend' transaction is generated by Exari that includes Product Adds and/or Product Cancels
    And the service retrieves the Contract's configuration from the CMD service and stores that information in the OCM
    And the service retrieves the Contract's 'Above-the-Line' and 'Below the Line' Product Groups and stores that information in the OCM
    Then an Optum service built to handle a 'ContractAmend' event is started
    And the service loops over every Product Group performing the following business logic:
    And the service publishes an Kafka event to proceed with this 'ContractAmend' transaction
    And the service publishes the Kafka event with OCM data as previously described

