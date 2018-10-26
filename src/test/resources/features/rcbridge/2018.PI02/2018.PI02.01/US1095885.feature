# Last updated on 
@CLM_UAT
@US1095885
@2018.PI02
@2018.PI02.01
@MVP
@PI02_Top3
@Plus
@Parity
@F175417
@releasePast
@iterationPast
Feature: US1095885 - Contract Gateway API

  @TC565537
  @Automated
  @Functional
  @CLM_UAT
  @US1095885
  @2018.PI02
  @2018.PI02.01
  Scenario: TC565537 - [RL1]
    Given A business transaction
    When Transaction is received from Exari but the transaction state service is down
    Then An error is returned

  @TC565536
  @Automated
  @Functional
  @CLM_UAT
  @US1095885
  @2018.PI02
  @2018.PI02.01
  Scenario: TC565536 - [RL0]
    Given A business transaction
    When Transaction is received from Exari
    Then A new transaction is created
    And The business is submitted to the business event topic
