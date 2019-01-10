# Last updated on 
@Retro
@US972034
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US972034 - Field on Initiate Retro Form - Retro Why can't move effective date

  @TC565550
  @Automated
  @Functional
  @Retro
  Scenario: TC565550 - [RL0]
    Given A retro approval has been triggered.
    When I click on "Why can't the effective date be moved?"
    Then A free form long text box is available for input.
    And The information input into the field can be saved.

