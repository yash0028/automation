# Last updated on 
@MVP
@CLM_UAT
@EXARI-11399
@US858608
Feature: US858608 - Import Relationships from Template

  @TC564634
  @Automated
  @Functional
  Scenario: TC564634 - [RL0]
    Given I am a User with access to maintain Entities
    When I want to load Entity relationships in template form into the Entity Management solution
    Then I can import Entity relationships listed in template form into the Entity Management solution
