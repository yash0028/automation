# Last updated on 2018-06-19T18:28:07.707Z
@MVP
@Parity
@7.5_Release
Feature: F196021 - Feature for Exari Sprint #2 (Mass Actions)

  @MVP
  @EXARI-11455
  @Parity
  @7.5_Release
  @2018.PI02
  @2018.PI02.02
  Scenario: US1156610
    Given I am a Contract Administrator with access to Mass Actions
    When I navigate to the Mass Actions UI
    Then I will be able to view the available Mass Actions Definitions

  @MVP
  @EXARI-11380
  @Parity
  @7.5_Release
  @2018.PI02
  @2018.PI02.02
  Scenario: US1156597
    Given I access the Mass Actions UI
    Then the API will make appropriate connections
