# Last updated on 
@US1451117
@2018.PI05
@2018.PI05.03
@MVP
@Plus
@Priority_2
@Facility
@releaseFuture
@iterationFuture
Feature: US1451117 - CLM >COSMOS Add a Facility Contract - PIC DIV - PSO (Criteria) - Design

  @TC651736
  @Manual
  @Functional
  Scenario: TC651736 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

