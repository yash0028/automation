# Last updated on 
@MVP
@CLM_UAT
@EXARI-11530
@US858720
@2018.PI03
Feature: US858720 - Return to Prior Search Results from Current Selection

  @TC564595
  @Automated
  @Functional
  Scenario: TC564595 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I navigate into an item from a search results list
    Then I can return to my original search results list without rebuilding the query
