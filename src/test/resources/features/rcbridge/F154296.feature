# Last updated on 2018-07-19T18:45:44.800Z
@MVP
@Plus
@Priority_1
Feature: F154296 - Exari EM - Perform Basic Search

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US1093314
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Entity Type
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US1093312
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Entity Name
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US1093318
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Alternate Name
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US948350
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search using multiple data points
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US1093316
    Given I am a User with access to view or maintain Entity information
    When I want to find an Entity to view or maintain
    Then I can search by Identifier
    And the solution displays Entity records matching my search criteria
    And Results display with best match presented first
