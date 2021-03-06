# Last updated on
@CMDTest

Feature: CMD - [Continued] CMD

  @TC_CMD_ActionRequired_04
  @User_Interface

  Scenario: CMD Action Required Downstream Error Resolution Install Cancelled - [RL0]
     # CMD Action Required Downstream Error Resolution --Resolve Multiple --ResolutionType install Cancelled

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on Action Required
    And I click Downstream Error Resolution
    And I search contract by contract Id
    And I click search button
    #And I click on contract sort button
    And I click site in Downstream Error Resolution
    Then I click to expand Error Code
    And I click the Resolve Multiple Tab
    And I Enter Resolution Text
    And I select Resolution Type Install Cancelled
    And I check box to select all rows
    Then I click submit button