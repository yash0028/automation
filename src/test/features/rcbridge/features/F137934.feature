# Last updated on 2018-06-05T15:33:34.734Z
@MVP
@Plus
Feature: F137934 - Export Entity Data

  Scenario: US861135
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Summary data outside of the Entity Management Solution
    Then I have the ability to export Entity Summary data

  Scenario: US1134378
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Relationship data outside of the Entity Management Solution
    Then I have the ability to export Entity Relationship data

  Scenario: US861136
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Detail data outside of the Entity Management Solution
    Then I have the ability to export Entity Detail data

  Scenario: US861137
    Given I am the Entity Management Solution
    When an external recipient with no User access needs to receive Entity information
    Then I can provide Entity data to the recipients

  Scenario: US861138
    Given I am a User with access to view and maintain Entity information
    When I want to view Entity Structure data outside of the Entity Management Solution
    Then I have the ability to export Entity Structure data

