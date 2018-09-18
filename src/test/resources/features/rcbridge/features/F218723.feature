# Last updated on 
@MVP
@Madhur
@Priority_1
@CMD
@F218723
Feature: F218723 - Contract Master Data (CMD) App2 User Interface and workflow for contract master errors Part 2

  @US1278513
  @2018.PI04
  Scenario: US1278513 - Log NDB API (COSMOS) contract master no results found
    Given: The NDB contract master look up API was executed with DIV, Panel, and COSMOS contract number
    When: The API response was successful
    And: The API returned no results
    Then: Log the following data in the database

  @US1278488
  @2018.PI04
  Scenario: US1278488 - CMD- Action Required Page Design, layout, and fields
    Given I am on the CMD dashboard
    And I have clicked on Action Required button on the CMD dashboard
    When I land on the CMD Action required page
    Then I can see the Contract Installation Error as page heading
    And I can see the following data header information on the page

  @US1290222
  @2018.PI04
  Scenario: US1290222::0 - CMD Integration with Exari - SSO (Reference Table Admin)
    Given a CMD error record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record error

  @US1290222
  @2018.PI04
  Scenario: US1290222::1 - CMD Integration with Exari - SSO (Reference Table Admin)
    Given a CMD error record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And user returned to the Exari contract record session from which they

  @US1290222
  @2018.PI04
  Scenario: US1290222::2 - CMD Integration with Exari - SSO (Reference Table Admin)
    Given an CMD error record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

