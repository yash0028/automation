# Last updated on 
@MVP
@EXARI-11792
@EXARI-11249
@CLM_UAT
@US929398
Feature: US929398 - Update Entity Characteristic Type

  @TC564856
  @Automated
  @Functional
  Scenario: TC564856 - [RL0]
    Given I am an Administrative User
    When I need to update an existing Entity Characteristic Type
    Then I can update an existing Entity Characteristic Type
    And I have the ability to cascade update to all records using that Entity Characteristic Type

