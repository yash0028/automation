# Last updated on 
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
  @US1368002
  @2018.PI04
  @2018.PI04.04
  Scenario Outline: TC608275 - [RL1]
    Given UHG_SITE contains "<site>"
    And "UHG_MARKET_NUMBER-DMCQ" = "03413"
    When "PRODUCT_SERVICES_EXCLUDED" does contain the word "Heritage"
    Then "MARKET_PRODUCT" silent inclusion criteria has NOT been met for "<marketProduct>"
    Examples:
      | site                | marketProduct       |
      | Northeast           | HRTG CHOICE RV      |
      | Central             | HRTG OPTIONS RV     |
      | West                | HRTG SEL ADV CHOICE |
      | Southeast           | HRTG SEL ADV OPTION |

  @TC600549
  @Manual
  @Functional
  @US1368002
  @2018.PI04
  @2018.PI04.04
  Scenario Outline: TC600549 - [RL0]
    Given "UHG_SITE" contains "<site>"
    And "UHG_MARKET_NUMBER-DMCQ" = "03413"
    When "PRODUCT_SERVICES_EXCLUDED" does NOT contain the word "Heritage"
    Then "MARKET_PRODUCT" silent inclusion criteria has been met for "<marketProduct>"
    Examples:
      | site                | marketProduct       |
      | Northeast           | HRTG CHOICE RV      |
      | Central             | HRTG OPTIONS RV     |
      | West                | HRTG SEL ADV CHOICE |
      | Southeast           | HRTG SEL ADV OPTION |

  @RC_unlinked
  @TC611133
  @Manual
  @Functional
  @US1368002
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611133 - [RL2]
    Given UHG_SITE = UHN Northeast, Central, West, Southeast
    And UHG Market_Number-DMCQ=03413 (Field in the UCM Model)
    When PRODUCT_SERVICES_EXCLUDED does NOT include 'Heritage%'
    And PAYMENT_POLICIES-MCQ is NOT UnitedHealthcare River Valley
    Then create payloads that include MARKET PRODUCT GROUP:HRTG CHOICE RV,HRTG OPTIONS RV,HRTG SEL ADV CHOICE,HRTG SEL ADV OPTION (equivalent) which should exclude PRODUCT_CD = EL, EO, ER and V3

