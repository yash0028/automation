# Last updated on 
@CLM_UAT
@EXARI-8603
@US950780
@2018.PI03
Feature: US950780 - Assign Entity Workflow Status for Updated Entities

  @TC564448
  @Automated
  @Functional
  Scenario: TC564448 - [RL0]
    Given I am the Entity Management Solution
    When A User updates an existing Entity
    Then I assign an Entity Workflow status to the updated Entity
    And the updated Entity enters the workflow approval process
