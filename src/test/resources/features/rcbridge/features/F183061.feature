# Last updated on 
@MVP
@PI02_Top3
@Parity
@F183061
Feature: F183061 - Enhance Migration Logic from Emptoris to Exari

  @CLM_UAT
  @US1093329
  @2018.PI02
  Scenario: US1093329 - Run migration process over 2 Filed contracts to ensure it works as expected (since no language) - validation
    Given I run the migration process
    When I process a Filed contract as a base agreement
    Then all applicable metadata files and attachments are successfully generated and there are no errors due to no contract language file

  @CLM_UAT
  @US1088438
  @2018.PI02
  Scenario: US1088438 - Add logic that defines order to process Base Agreements - Contract Status
    Given when I run the Physician, Facility, Ancillary, FQHC/PHO or Exeption migration process for one/more market numbers
    When I read the contracts in order of Contract Class as defined in the Contract Class Order excel document
    Then I am able to build the metadata files and attachments, and write to the Base Driver Table, in the order specified

  @CLM_UAT
  @US1088519
  @2018.PI02
  Scenario: US1088519 - Modify Contract Attachment report (created by Jim Castro) to be part of metadata send to Exari
    Given I run the Contract Attachments report for a given set of Market Numbers
    When I receive the data from the report
    Then I am able to send the report to Exari as part of the metadata migration delivery

  @US1100474
  @2018.PI02
  Scenario: US1100474 - Update Documentation
    Given the Sprint is complete and I review the User Stories detailed in the Sprint
    When I review the migration documentation
    Then I will find a reference to the pertinent detailed functionality from each User Story

  @US1096650
  @2018.PI02
  Scenario: US1096650 - Update Documentation - Sprint 2
    Given the Sprint is complete and I review the User Stories detailed in the Sprint
    When I review the migration documentation
    Then I will find a reference to the pertinent detailed functionality from each User Story

  @CLM_UAT
  @US1100068
  @2018.PI02
  Scenario: US1100068 - Allow Exari to provide acknowledgement by adding Exari Loading Status column to the Base Driver Table
    Given when I receive the Base Driver Table data back from Exari
    When I read the Exari Loading Status column
    Then I am able to provide metrics that identify the success/failure rate of all contracts, for a given Market Number, into Exari

  @CLM_UAT
  @US1134952
  @2018.PI02
  Scenario: US1134952 - Add logic that defines order to process Base Agreements - Base Agreements
    Given when I run the Physician, Facility, Ancillary, FQHC/PHO or Exeption migration process for one/more market numbers
    When I read the contracts in order of Contract Class as defined in the Contract Class Order excel document
    Then I am able to build the metadata files and attachments, and write to the Base Driver Table, in the order specified

  @CLM_UAT
  @US1096631
  @2018.PI02
  Scenario: US1096631 - Add Exception Contract column to Base Driver Table
    Given when am populating the Base Driver Table
    When the contract is identified as processing an Exception contract
    Then a Yes is populated into the Base_Exception column

  @CLM_UAT
  @US1134949
  @2018.PI02
  Scenario: US1134949 - Add logic that defines order to process Base Agreements - Market Numbers
    Given when I run the Physician, Facility, Ancillary, FQHC/PHO or Exeption migration process for one/more market numbers
    When I read the contracts in order of Contract Class as defined in the Contract Class Order excel document
    Then I am able to build the metadata files and attachments, and write to the Base Driver Table, in the order specified

  @CLM_UAT
  @US1096678
  @2018.PI02
  Scenario: US1096678 - Contracts are changed to Locked within Emptoris (by defined userid) once migrated
    Given I process a contract through the migration process and lock it in Emptoris
    When I attempt to open the contract in the Emptoris application
    Then I receive a contract is locked message in the Emptoris application

  @CLM_UAT
  @US1172552
  @2018.PI02
  Scenario: US1172552 - Add Base Contract Status and Related Contract Status to Base Driver File
    Given A BAse Driver report from Migration Extract
    When the Migration extract for a market has completed
    Then the report should have Base Contract status and Related Contract Status

