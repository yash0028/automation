# Last updated on 
@MVP
@CLM_UAT
@US1107635
@2018.PI03
Feature: US1107635 - Associate Contract ID to Provider upon Contract Execution

  @TC565773
  @Automated
  @Functional
  Scenario: TC565773 - [RL0]
    Given I am Entity Management Solution
    When a Contract is signed and executed by the Provider
    Then the Contract ID is visible on the Provider record in "Active" status in the Entity Management Solution
    And the Contract ID has an effective date
