# Last updated on 
@US1788190
@2019.PI07
@2019.PI07.03
@releasePast
@iterationPast
Feature: US1788190 - Handle Contract Update Event - Product Determination Logic (Remove Product) - Generate Type 3 error

  @TC818817
  @Manual
  @Functional
  Scenario: TC818817 - [RL0]
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    When an 'Contract Amendment' transaction is generated by Exari that includes Product Cancel
    And the service retrieves the Contract's configuration from the CMD service and stores that information in the OCM
    And the Product to cancel is not in the OCM record
    Then a Type 3 error is generated for the Product Cancel transaction
    And an error message will be displayed to the user in the log
    And the error message will state, "No changes found in the OCM; no system updates made"
    ###
