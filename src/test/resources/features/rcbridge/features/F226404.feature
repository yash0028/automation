# Last updated on 
@F226404
Feature: F226404 - CLM DevOps PI04

  @US1080317
  Scenario: US1080317 - Log forwarding
    Given A service is deployed
    When A log message is written
    Then The log message is send to the central log aggregation
    And The log message is available in the log dashboard

  @US1168431
  Scenario: US1168431 - Jenkins Automation Scripts
    Given there is a pain point,
    When at any step in the development process,
    Then I want to automate and streamline the process to alleviate pain points.

  @US1151078
  Scenario: US1151078 - Shared build pipeline for CLM
    Given a developer wants to deploy a service
    When the developer checks code in
    Then the CICD pipeline will automatically run through desired processes

  @US1239950
  Scenario: US1239950 - F5 GTMs for Production
    Given a service is exposed through layer 7,
    When multiple requests come into that service,
    Then the requests are spread out between ELR and CTC datacenters

  @US1272886
  Scenario: US1272886 - [Spike] Investigate Production Data
    Given the integrations have datasources
    When the integrations are checked for production data
    Then the production data should be identified

  @RCBridge
  @US1176975
  Scenario: US1176975::0 - RC Bridge Enhancement
    # Enhance Test Case Link
    Given a user story artifact with 2 valid acceptance criteria
    And that user story does not have test cases
    When rcbridge runs
    Then 2 test cases are created

  @RCBridge
  @US1176975
  Scenario Outline: US1176975::1 - RC Bridge Enhancement
    Given a user story artifact with 2 valid acceptance criteria
    And that user story has 2 outdated RCLink test cases
    When rcbridge runs with "<data A>" and "<data B>"
    Then the RCLink test cases are updated
    Examples:
      | data A | data B |
      | A | B |
      | AA | BB |

  @US1080320
  Scenario: US1080320 - Metrics forwarding
    Given A service capable of publishing metrics is deployed
    When The service performs an operation, it sends statics to Splunk
    Then The metrics are recorded and aggregated, available In a dashboard for visualization

  @US1214576
  Scenario: US1214576 - CLM Base Docker Image
    Given a developer wants to build a new clm service,
    When they use the clm base docker image,
    Then they will have the necessary pieces to deploy with Monitoring, logging, etc.

  @MOCK_COSMOS
  @MOCK_NDB
  @US1332127
  Scenario: US1332127::0 - Create NDB/Cosmos Mock Service
    When querying the mock NDB service with parameters of:
      | taxIdNumber | 976543236   |
      | mpinNumber | 6484928    |
      | contractNumber | 012345682      |
    Then the mock service returns a "200" status code
    And searching for the NDB "contractNumber" with value "012345682" returns JSON containing:
      | taxIdNumber | 976543236   |
      | mpinNumber | 6484928    |
      | contractNumber | 012345682      |

  @MOCK_COSMOS
  @MOCK_NDB
  @US1332127
  Scenario: US1332127::1 - Create NDB/Cosmos Mock Service
    When querying the mock Cosmos service with parameters of:
      | ps624_i_cosmos_cont_nbr | 6214                    |
      | cosmos_userid | 91199         |
      | cosmos_trancode | PS624           |
    Then the mock service returns a "200" status code
    And searching for the Cosmos "ps624_i_cosmos_cont_nbr" with value "012345682" returns JSON containing:
      | ps624_i_cosmos_cont_nbr | 6214                    |
      | cosmos_userid | 91199         |
      | cosmos_trancode | PS624           |

  @US1078501
  Scenario: US1078501 - JMX Trans for Kafka
    Given Kafka is running
    When Kafka is updating it's JMX metrics
    Then The metrics are sent to Splunk for metrics aggregation and available in the metrics dashboard

