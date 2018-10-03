# Last updated on 
@MVP
@EXARI-11527
@CLM_Exari
@US1137956
@2018.PI03
Feature: US1137956 - Define user access to Mass Action definitions

  @TC564540
  @Automated
  @Functional
  Scenario: TC564540 - [RL0]
    Given I am a Mass Actions Administrator
    When I need to define user access
    Then I can define access within the Mass Actions UI
    And I can navigate out to apply permissions in the Repository
