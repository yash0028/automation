# Last updated on 
@US1387178
@2018.PI05
@MVP
@Maintenance
@releaseFuture
@iterationUnknown
Feature: US1387178 - Receive and recognize roster events/transactions from Exari

  @TC614184
  @Manual
  @Functional
  Scenario: TC614184 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "RosterUpdated"
    When an "UpdateRoster" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

