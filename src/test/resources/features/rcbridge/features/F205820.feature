# Last updated on 
@Priority_1
@10/1_Physician
@CMD
@F205820
Feature: F205820 - Contract Meta Data (CMD)

  @US1233645
  @2018.PI03
  Scenario: US1233645::0 - View CMD Overview
    Given an Exari contract is created
    When a contract is executed in Exari
    Then a CMD Platform Overview view of the CMD record is created

  @US1233645
  @2018.PI03
  Scenario: US1233645::1 - View CMD Overview
    Given an CMD record exists
    When a CMD Platform Overview inquiry request is made
    Then a CMD Platform Overview inquiry response is generated

  @US1240232
  @2018.PI03
  Scenario: US1240232::0 - Create, Modify or Verify CMD Record
    Given an Exari contract is created
    When the contract 'Final Capture' event occurs in Exari
    Then a CMD record is created

  @US1240232
  @2018.PI03
  Scenario: US1240232::1 - Create, Modify or Verify CMD Record
    Given an CMD record exists
    When a CMD record inquiry request is made
    Then a CMD record is accessible

  @US1236428
  @2018.PI03
  Scenario: US1236428::0 - CMD Integration with Exari
    Given a CMD record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record

  @US1236428
  @2018.PI03
  Scenario: US1236428::1 - CMD Integration with Exari
    Given a CMD record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And user returned to the Exari contract record session from which they

  @US1236428
  @2018.PI03
  Scenario: US1236428::2 - CMD Integration with Exari
    Given an CMD record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

  @US1242726
  @2018.PI03
  Scenario: US1242726::0 - View CMD NDB Platform Model set
    Given an Exari contract order is initiated
    When the contract 'Final Capture' event occurs in Exari
    Then a CMD record is created

  @US1242726
  @2018.PI03
  Scenario: US1242726::1 - View CMD NDB Platform Model set
    Given an CMD record exists
    When a CMD record inquiry request is made
    Then a CMD record is accessible

  @US1233109
  @2018.PI03
  Scenario: US1233109::0 - View CMD Status
    Given an Exari contract is created
    When the contract is executed in Exari
    Then a CMD record is created and stored

  @US1233109
  @2018.PI03
  Scenario: US1233109::1 - View CMD Status
    Given an CMD record exists
    When a CMD Status inquiry request is made
    Then a CMD Status inquiry response is generated
