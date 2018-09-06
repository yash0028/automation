# Last updated on 
@US1234925
@2018.PI03
Feature: US1234925 - [Unfinished] Download Crosswalk Template

  @TC565714
  @Automated
  @Functional
  Scenario: TC565714 - [RL1]
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

  @TC565713
  @Automated
  @Functional
  Scenario: TC565713 - [RL0]
    Given more than one product description crosswalk record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available
