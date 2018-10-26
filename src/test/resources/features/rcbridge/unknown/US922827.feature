# Last updated on 
@US922827
@F207058
@releaseUnknown
@iterationUnknown
Feature: US922827 - Inactivate Entity Address

  @TC564409
  @Automated
  @Functional
  @US922827
  Scenario: TC564409 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Address listed on an Entity
    Then I can inactivate the Address for an Entity
    And the updated Entity enters the approval process workflow
