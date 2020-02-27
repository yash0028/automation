# Last updated on 
@US1607607
@2019.PI06
@2019.PI06.05
@releasePast
@iterationPast
Feature: US1607607 - Handle Roster Update Event --> Happy path (Part 2)

  @TC739055
  @Manual
  @Functional
  Scenario: TC739055 - [RL0]
    # Scenario 1 - Add Happy Path
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    And that contract has multiple product groups
    When an "Update Roster" transaction is generated by Exari that includes a Provider Add
    And an Optum service built to handle a "Roster Update" event is started
    Then the service retrieves the Contract's configuration from the CMD service and stores that information in the OCM
    And the service retrieves the providers to add from Exari and stores that information in the OCM
    And the OCM is updated with "needs new contract line" for every qualified product group / provider combo
    And the OCM is updated with "N/A" for every non-qualified product group / provider combo
    # Are these two needed for just a happy path scenario??
    # And the service publishes an Kafka event to proceed with this 'Roster Update' transaction
    # And the service publishes the Kafka event with OCM data as previously described

  @TC739056
  @Manual
  @Functional
  Scenario: TC739056 - [RL1]
    # Scenario 2 - Cancel Happy Path
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    And that contract has multiple product groups
    When an "Update Roster" transaction is generated by Exari that includes a Provider Cancel
    And an Optum service built to handle a "Roster Update" event is started
    Then the service retrieves the Contract's configuration from the CMD service and stores that information in the OCM
    And the service retrieves the providers to cancel from Exari and stores that information in the OCM
    And the OCM is updated with "N/A" for every non-qualified product group / provider combo
    # Are these two needed for just a happy path scenario??
    # And the service publishes an Kafka event to proceed with this 'Roster Update' transaction
    # And the service publishes the Kafka event with OCM data as previously described
