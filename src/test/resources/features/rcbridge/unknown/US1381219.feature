# Last updated on 
@US1381219
@F232975
@releaseUnknown
@iterationUnknown
Feature: US1381219 - Switch Remaining Services to Base Image

  @TC611114
  @Manual
  @Functional
  @US1381219
  Scenario: TC611114 - [RL0]
    Given there is a CLM application,
    When it is built and pushed to dockerhub,
    Then it's first layer is the clm-base-image

