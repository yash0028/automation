# Last updated on 
@PES
@US1416329
@2018.PI04
@2018.PI04.04
@releasePast
@iterationPast
Feature: US1416329 - Changes to Counter Party Search

  @TC634260
  @Automated
  @Functional
  @PES
  Scenario Outline: TC634260 - [RL0] Validate corpMpin received on combo input searches
    Given a user wants to find a Counter Party
    When they search using a combo input parameter "<field1>" "<field2>" "<value1>" "<value2>"
    Then they get back all of the possible providers and each providers associated "corpMpin" number
    Examples:
      | field1 | field2   | value1 | value2      |
      | mpin   | tin      | 12345  | 760027557   |
      | mpin   | npi      | 2768   | 1437251287  |
      | mpin   | zip      | 907099 | 55129       |
      | mpin   | city     | 3633   | Minneapolis |
      | mpin   | lastName | 951    | Smith       |
      | mpin   | state    | 4422   | AK          |

