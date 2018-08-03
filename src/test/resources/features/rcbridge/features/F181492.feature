# Last updated on 2018-08-03T15:08:03.728Z
@MVP
@Plus
@Priority_1
Feature: F181492 - Exari EM - Maintain Identity Keys

  @2018.PI03
  Scenario: US1225002
    Given I am the Entity Management Solution
    When an NPI to Provider relationship is terminated in NDB
    And the NPI to Provider relationship exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated NPI to Provider relationship is visible in the Entity Management Solution

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US1086978
    Given I am the Entity Management Solution
    When the NPI is updated in NDB
    And the NPI exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated NPI is available in the Entity Management Solution

  @2018.PI03
  Scenario: US1225018
    Given I am the Entity Management Solution
    When multiple updates are received from a Legacy application
    Then I can process all the transactions in the mass update

  @2018.PI03
  Scenario: US1224746
    Given I am the Entity Management Solution
    When a TIN is created in NDB
    Then the new TIN is passed to the Entity Management Solution

  @2018.PI03
  Scenario: US1224846
    Given I am the Entity Management Solution
    When a TIN is terminated in NDB
    And the TIN exists in the Entity Management Solution
    Then the Entity Management Solution is updated
    And the TIN is expired in the Entity Management Solution

  @2018.PI03
  Scenario: US1224893
    Given I am the Entity Management Solution
    When a UHC ID to Provider relationship is terminated in NDB
    And the UHC ID to Provider relationship exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated UHC ID to Provider relationship is visible in the Entity Management Solution

  @2018.PI03
  Scenario: US1222431
    Given I am the Entity Management Solution
    When the UHC ID is updated in NDB
    And the UHC ID exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated UHC ID is available in the Entity Management Solution

  @2018.PI03
  Scenario: US1225057
    Given I am the Entity Management Solution
    When an MPIN is terminated
    And there are active contracts associated to the MPIN
    Then a workflow item is created
    And the owner of the contract is notified to investigate and update the contract if necessary

  @2018.PI03
  Scenario: US1225008
    Given I am the Entity Management Solution
    When an NPI to Provider relationship is created in NDB
    And the Provider exists in Entity Management
    Then the Entity Management Solution is updated
    And the created NPI to Provider relationship is visible in the Entity Management Solution

  @2018.PI03
  Scenario: US1224662
    Given I am the Entity Management Solution
    When the MPIN/TIN relationship is terminated in NDB
    And the MPIN/TIN relationship exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated MPIN/TIN relationship is visible in the Entity Management Solution

  Scenario: US1226817
    Given I am the Entity Management Solution
    When a BSAR to Provider relationship is created in NDB
    And the Provider exists in Entity Management
    Then the Entity Management Solution is updated
    And the created BSAR to Provider relationship is visible in the Entity Management Solution

  @2018.PI03
  Scenario: US1224873
    Given I am the Entity Management Solution
    When an NPI relationship is created with that TIN in NDB
    And the TIN exists in Entity Management
    Then the Entity Management Solution is updated
    And the created NPI/TIN relationship is visible in the Entity Management Solution

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US1086983
    Given I am the Entity Management Solution
    When the TIN is updated in NDB
    And the TIN exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated TIN is available in the Entity Management Solution

  @2018.PI03
  Scenario: US1224857
    Given I am the Entity Management Solution
    When a NPI/TIN relationship is terminated in NDB
    And the NPI/TIN relationship exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated NPI/TIN relationship is visible in the Entity Management Solution

  @2018.PI03
  Scenario: US1224987
    Given I am the Entity Management Solution
    When a UHC ID to Provider relationship is created in NDB
    And the Provider exists in Entity Management
    Then the Entity Management Solution is updated
    And the created UHC ID to Provider relationship is visible in the Entity Management Solution

  Scenario: US1226816
    Given I am the Entity Management Solution
    When a BSAR to Provider relationship is terminated in NDB
    And the BSAR to Provider relationship exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated BSAR to Provider relationship is visible in the Entity Management Solution

  @2018.PI03
  Scenario: US1225013
    Given I am the Entity Management Solution
    When a single update is received from a Legacy application
    Then I can process that single update

  @2018.PI03
  Scenario: US1224723
    Given I am the Entity Management Solution
    When an MPIN relationship is created with that TIN in NDB
    And a TIN exists in Entity Management
    Then the Entity Management Solution is updated
    And the created MPIN/TIN relationship is visible in the Entity Management Solution

  @2018.PI03
  Scenario: US1225052
    Given I am the Entity Management Solution
    When a TIN is terminated
    And there are active contracts associated to the TIN
    Then a workflow item is created
    And the owner of the contract is notified to investigate and update the contract if necessary
