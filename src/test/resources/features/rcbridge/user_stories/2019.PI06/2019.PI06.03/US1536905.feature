# Last updated on 
@US1536905
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationPresent
Feature: US1536905 - Handle Contract Update Event - Build OCM (Remove Product)

  @TC725635
  @Manual
  @Functional
  Scenario: TC725635 - [RL0]
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    When an 'Contract Update' transaction is generated by Exari that includes Product Adds and/or Product Cancels
    Then an Optum service built to handle a 'Contract Update' event is started
    And the service retrieves the Contract's configuration from the CMD service and stores that information in the OCM
    And the service retrieves the Contract's 'Above-the-Line' and 'Below the Line' Product Groups and stores that information in the OCM

