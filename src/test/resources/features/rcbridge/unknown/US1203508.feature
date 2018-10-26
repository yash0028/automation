# Last updated on 
@US1203508
@MVP
@Priority_1
@10/1_Physician
@F219211
@releaseUnknown
@iterationUnknown
Feature: US1203508 - Transaction scoped key-value store (Resource Store)

  @TC565930
  @Automated
  @Functional
  @US1203508
  Scenario: TC565930 - [RL3]
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    And A business event contains a resource that is offloaded to the "kv" location
    When The business event resource is accessed via it's ResourceContext
    Then The resources is loaded from the "kv" location

  @TC565931
  @Automated
  @Functional
  @US1203508
  Scenario: TC565931 - [RL4]
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    And A business event contains a resource that is offloaded to the "kv" location
    When The business event resource is accessed via it's ResourceContext
    And The business event resource is updated via it's ResourceContext
    Then The resources is stored in the "kv" location

  @TC565927
  @Automated
  @Functional
  @US1203508
  Scenario: TC565927 - [RL0]
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    When This resource store library is included in the microservice
    Then ResourceStore implementation is auto-wired via Spring-Boot auto-configuration

  @TC565929
  @Automated
  @Functional
  @US1203508
  Scenario: TC565929 - [RL2]
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    When A resource is removed from the business event
    Then The resources is deleted from the "kv" location

  @TC565928
  @Automated
  @Functional
  @US1203508
  Scenario: TC565928 - [RL1]
    Given A microservice uses the Kafka-Client-Starter library to consume or produce business events
    And This resource store library is included in the microservice
    When A resource is added to the business event
    Then The resources is stored in the "kv" location
