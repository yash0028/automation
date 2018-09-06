# Last updated on 
@MVP
@F201505
Feature: F201505 - CLM DevOps PI03

  @US1151078
  @2018.PI03
  Scenario: US1151078 - Shared build pipeline for CLM
    Given a developer wants to deploy a service
    When the developer checks code in
    Then the CICD pipeline will automatically run through desired processes

  @US1239950
  @2018.PI03
  Scenario: US1239950 - F5 GTMs for Production
    Given a service is exposed through layer 7,
    When multiple requests come into that service,
    Then the requests are spread out between ELR and CTC datacenters

  @RCBridge
  @US1176975
  @2018.PI03
  Scenario: US1176975::0 - RC Bridge Enhancement
    # Enhance Test Case Link
    Given a user story artifact with 2 valid acceptance criteria
    And that user story does not have test cases
    When rcbridge runs
    Then 2 test cases are created

  @RCBridge
  @US1176975
  @2018.PI03
  Scenario Outline: US1176975::1 - RC Bridge Enhancement
    Given a user story artifact with 2 valid acceptance criteria
    And that user story has 2 outdated RCLink test cases
    When rcbridge runs with "<data A>" and "<dataB>"
    Then the RCLink test cases are updated
    Examples:
      | data A | data B |
      | A | B |
      | AA | BB |

  @Mark_E.
  @US1289622
  @2018.PI03
  Scenario: US1289622 - Initialize events from contract transaction changes in Event Trigger
    Given An email is sent to the Optum Exari update email address
    When the event is sent to the Event Gateway
    Then the event has a transaction id corresponding to the contract update that initiated the email

  @US1273084
  @2018.PI03
  Scenario: US1273084 - Fortify Scans
    Given that code is pushed to master,
    When the code gets to the point in the pipeline for Fortify,
    Then the code is scanned by Fortify and results are uploaded to SCAR

  @US1080320
  @2018.PI03
  Scenario: US1080320 - Metrics forwarding
    Given A service capable of publishing metrics is deployed
    When The service performs an operation, it sends statics to Splunk
    Then The metrics are recorded and aggregated, available In a dashboard for visualization

  @US1181927
  @2018.PI03
  Scenario: US1181927 - Integrate Acceptance Testing into Pipeline
    Given the need for acceptance testing in the pipeline
    Then we need to implement acceptance testing into the pipeline

  @US1214576
  @2018.PI03
  Scenario: US1214576 - CLM Base Docker Image
    Given a developer wants to build a new clm service,
    When they use the clm base docker image,
    Then they will have the necessary pieces to deploy with Monitoring, logging, etc.

  @US1080317
  @2018.PI03
  Scenario: US1080317 - Log forwarding
    Given A service is deployed
    When A log message is written
    Then The log message is send to the central log aggregation
    And The log message is available in the log dashboard

  @US1168431
  @2018.PI03
  Scenario: US1168431 - Jenkins Automation Scripts
    Given there is a pain point,
    When at any step in the development process,
    Then I want to automate and streamline the process to alleviate pain points.

  @US1272886
  @2018.PI03
  Scenario: US1272886 - [Spike] Investigate Production Data
    Given the integrations have datasources
    When the integrations are checked for production data
    Then the production data should be identified

  @Charlie
  @US1272911
  @2018.PI03
  Scenario: US1272911 - Fix Fortify Issues
    Given services that are maintained by CLM Team 1
    When Fortify reports high-end critical issues on a service
    Then a developer needs to fix the high-end critical issues

  @US1078501
  @2018.PI03
  Scenario: US1078501 - JMX Trans for Kafka
    Given Kafka is running
    When Kafka is updating it's JMX metrics
    Then The metrics are sent to Splunk for metrics aggregation and available in the metrics dashboard

