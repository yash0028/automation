# Last updated on 2018-06-05T15:33:33.723Z
@MVP
@Plus
Feature: F137903 - Provide Entity Data

  Scenario: US861058
    Given I am the Entity Management Solution
    When an Entity structure changes in the Entity Management Solution
    Then I made the updated Entity structure information available to consuming applications

  Scenario: US861056
    Given I am the Entity Management Solution
    When Entity data is updated in the Entity Management Solution
    Then updated Entity data is made available to consuming applications

