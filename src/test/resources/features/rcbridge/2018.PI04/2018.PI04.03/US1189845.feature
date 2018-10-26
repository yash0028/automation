# Last updated on 
@US1189845
@2018.PI04
@2018.PI04.03
@MVP
@Priority_1
@10/1_Physician
@F219211
@releasePresent
@iterationPresent
Feature: US1189845 - [Continued] [Continued][Continued] Downstream system specific validation handling

  @TC537148
  @Manual
  @Functional
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC537148 - Validate error reported to transaction system for incomplete contract data for NDB
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is incomplete
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the ndb-validator service and an error is reported to the transaction system

  @CLM_UAT
  @TC598663
  @Manual
  @Acceptance
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC598663 - Validate the error reported by the ndb validator service when incomplete data sent through contract domain
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is incomplete
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the ndb-validator service and an error is reported to the transaction system

  @TC565790
  @Manual
  @Functional
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC565790 - [RL2]
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is valid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the cosmos-validator service

  @TC538452
  @Manual
  @Functional
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC538452 - Validate error reported to transaction system for incomplete contract data for NDB
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is invalid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the cosmos-validator service and an error is reported to the transaction system

  @TC565788
  @Manual
  @Functional
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC565788 - [RL0]
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is valid for the NDB update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the ndb-validator service

  @TC565789
  @Manual
  @Functional
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC565789 - [RL1]
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is incomplete
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the ndb-validator service and an error is reported to the transaction system

  @CLM_UAT
  @TC598665
  @Manual
  @Acceptance
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC598665 - Validate business event approved by COSMOS validator service.
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is incomplete
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the ndb-validator service and an error is reported to the transaction system

  @CLM_UAT
  @TC598658
  @Manual
  @Acceptance
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC598658 - Validate business event is approved by NDB-Validator Service
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is valid for the NDB update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the ndb-validator service

  @TC538430
  @Manual
  @Functional
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC538430 - Validate business event is approved by COSMOS-Validator Service
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is valid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the cosmos-validator service

  @TC565791
  @Manual
  @Functional
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC565791 - [RL3]
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is invalid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the cosmos-validator service and an error is reported to the transaction system

  @CLM_UAT
  @TC598667
  @Manual
  @Acceptance
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC598667 - Validate the error reported by the Cosmos validator service when invalid data request sent through contract domain
    Given A business event is received by the event gateway that requires an update to COSMOS
    And the associated contract data is invalid for the COSMOS update
    When The enriched business event is sent by the contract-domain service
    Then It is validated by the cosmos-validator service and an error is reported to the transaction system

  @TC537147
  @Manual
  @Functional
  @US1189845
  @2018.PI04
  @2018.PI04.03
  Scenario: TC537147 - Validate business event is approved by NDB-Validator Service
    Given A business event is received by the event gateway that requires an update to NDB
    And the associated contract data is valid for the NDB update
    When The enriched business event is sent by the contract-domain service
    Then It is validated and approved by the ndb-validator service
