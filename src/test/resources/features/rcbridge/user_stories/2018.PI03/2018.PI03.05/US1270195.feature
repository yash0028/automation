# Last updated on 
@Charlie
@ETMA
@US1270195
@2018.PI03
@2018.PI03.05
@releasePast
@iterationPast
Feature: US1270195 - Point to new ETMA DB

  @TC554636
  @Manual
  @Functional
  @Charlie
  @ETMA
  Scenario: TC554636 - [RL0] Re-Run Acceptance Tests for ETMA
    When CLM Etma service is updated with the new DB
    Then all acceptance tests are re-run

