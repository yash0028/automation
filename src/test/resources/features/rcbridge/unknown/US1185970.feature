# Last updated on 
@MVP
@CLM_UAT
@US1185970
@MVP
@Plus
@Priority_1
@F137657
@releaseUnknown
@iterationUnknown
Feature: US1185970 - Select Relationship Type

  @TC565271
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US1185970
  Scenario: TC565271 - [RL0]
    Given I am a User with access to maintain Entity information
    When I am creating an Entity
    Then I can select a Relationship Type to relate the Entity to another Entity, Provider, or Identifier
