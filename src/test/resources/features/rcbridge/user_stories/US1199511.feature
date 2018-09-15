# Last updated on 
@US1199511
@2018.PI03
Feature: US1199511 - [Continued] PIC Implementation

  @TC534390
  @Automated
  @Functional
  Scenario Outline: TC534390 - [RL0] Validate contract data is sent back to PIC
    Given Exari has received a request to send data to PIC
    When the micro service has received the contract id of "<contractId>" from Exari
    And the micro service finds the data valid based on the selection criteria
    Then the micro service sends the data to PIC
    Examples:
      | contractId |
      | 124319 |

  @TC537136
  @Manual
  @Functional
  Scenario: TC537136 - [RL2] Validate error when microservice cannot be reached
    Given Optum has received a request to send data to PIC
    When the micro service is unable to be reached by PIC
    Then Optum will return a server error

  @TC537132
  @Automated
  @Functional
  Scenario Outline: TC537132 - [RL1] Validate error message for invalid data
    Given Exari has received a request to send data to PIC
    When the micro service has received the contract id of "<contractId>" from Exari
    And the micro service finds the data invalid based on the selection criteria
    Then the micro service returns a service error
    Examples:
      | contractId |
      | 124318 |

