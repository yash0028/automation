# Last updated on 
@Contract_Rules
@US1368002
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@F233635
@releasePresent
@iterationPresent
Feature: US1368002 - HERITAGE PRODUCT SILENT INCLUSION

  @TC608275
  @Manual
  @Functional
  @Contract_Rules
  @US1368002
  @2018.PI04
  @2018.PI04.04
  Scenario Outline: TC608275 - [RL1]
    Given "uhgSite" contains "<site>"
    And "marketNumber" = "03413"
    When "productServicesExcluded" does contain the word "Heritage"
    Then "marketProductGroups" silent inclusion criteria has NOT been met for "<marketProduct>"
    Examples:
      | site                | marketProduct       |
      | Northeast UHN       | HRTG CHOICE RV      |
      | Central UHN         | HRTG OPTIONS RV     |
      | West UHN            | HRTG SEL ADV CHOICE |
      | Southeast UHN       | HRTG SEL ADV OPTION |

  @TC600549
  @Manual
  @Functional
  @Contract_Rules
  @US1368002
  @2018.PI04
  @2018.PI04.04
  Scenario Outline: TC600549 - [RL0]
    Given "uhgSite" contains "<site>"
    And "marketNumber" = "03413"
    When "productServicesExcluded" does NOT contain the word "Heritage"
    Then "marketProductGroups" silent inclusion criteria has been met for "<marketProduct>"
    Examples:
      | site                | marketProduct       |
      | Northeast UHN       | HRTG CHOICE RV      |
      | Central UHN         | HRTG OPTIONS RV     |
      | West UHN            | HRTG SEL ADV CHOICE |
      | Southeast UHN       | HRTG SEL ADV OPTION |

