# Last updated on 2018-06-05T15:33:30.006Z
@MVP
@Plus
Feature: F165534 - Setup Retro Approval

  Scenario: US1039748
    Given a contract has an effective date in the past
    When it is being executed
    When And no retro approval exists
    Then tell us user that they need to obtain retro approval

