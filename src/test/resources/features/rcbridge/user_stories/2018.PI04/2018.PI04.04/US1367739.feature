# Last updated on 
@Contract_Rules
@US1367739
@2018.PI04
@2018.PI04.04
@releasePast
@iterationPast
Feature: US1367739 - Identify UHC EI and MR Pilot Markets

  @TC600525
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC600525 - [RL0] Validate in pilot for Central UHN
    Given "uhgSite" equals "Central UHN"
    When "uhgContractSubtypeHealthcare" equals one of "<uhgContractSubtypeHealthcare>"
    And "uhgMarketNumber" equals one of "<uhgMarketNumber>"
    Then contract is included in Pilot
    Examples:
      | uhgContractSubtypeHealthcare            | uhgMarketNumber |
      | Practitioner Agreement                  | 13476           |
      | Practitioner Agreement                  | 13477           |
      | Practitioner Agreement                  | 13478           |
      | Practitioner Agreement                  | 13479           |
      | Practitioner Agreement                  | 13634           |
      | Medical Group Agreement                 | 13476           |
      | Medical Group Agreement                 | 13477           |
      | Medical Group Agreement                 | 13478           |
      | Medical Group Agreement                 | 13479           |
      | Medical Group Agreement                 | 13634           |
      | Simplified Physician Agreement          | 13476           |
      | Simplified Physician Agreement          | 13477           |
      | Simplified Physician Agreement          | 13478           |
      | Simplified Physician Agreement          | 13479           |
      | Simplified Physician Agreement          | 13634           |
      | Simplified Practitioner Group Agreement | 13476           |
      | Simplified Practitioner Group Agreement | 13477           |
      | Simplified Practitioner Group Agreement | 13478           |
      | Simplified Practitioner Group Agreement | 13479           |
      | Simplified Practitioner Group Agreement | 13634           |
      | Simplified Medical Group Agreement      | 13476           |
      | Simplified Medical Group Agreement      | 13477           |
      | Simplified Medical Group Agreement      | 13478           |
      | Simplified Medical Group Agreement      | 13479           |
      | Simplified Medical Group Agreement      | 13634           |

  @TC600526
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC600526 - [RL1] Validate in pilot for Northeast UHN
    Given "uhgSite" equals "Northeast UHN"
    When "uhgContractSubtypeHealthcare" equals one of "<uhgContractSubtypeHealthcare>"
    And "uhgMarketNumber" equals one of "<uhgMarketNumber>"
    Then contract is included in Pilot
    Examples:
      | uhgContractSubtypeHealthcare            | uhgMarketNumber |
      | Practitioner Agreement                  | 45592           |
      | Practitioner Agreement                  | 45593           |
      | Practitioner Agreement                  | 45594           |
      | Practitioner Agreement                  | 45595           |
      | Practitioner Agreement                  | 45597           |
      | Medical Group Agreement                 | 45592           |
      | Medical Group Agreement                 | 45593           |
      | Medical Group Agreement                 | 45594           |
      | Medical Group Agreement                 | 45595           |
      | Medical Group Agreement                 | 45597           |
      | Simplified Physician Agreement          | 45592           |
      | Simplified Physician Agreement          | 45593           |
      | Simplified Physician Agreement          | 45594           |
      | Simplified Physician Agreement          | 45595           |
      | Simplified Physician Agreement          | 45597           |
      | Simplified Practitioner Group Agreement | 45592           |
      | Simplified Practitioner Group Agreement | 45593           |
      | Simplified Practitioner Group Agreement | 45594           |
      | Simplified Practitioner Group Agreement | 45595           |
      | Simplified Practitioner Group Agreement | 45597           |
      | Simplified Medical Group Agreement      | 45592           |
      | Simplified Medical Group Agreement      | 45593           |
      | Simplified Medical Group Agreement      | 45594           |
      | Simplified Medical Group Agreement      | 45595           |
      | Simplified Medical Group Agreement      | 45597           |

  @TC627485
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC627485 - [RL2] Validate in pilot for Southeast UHN
    Given "uhgSite" equals "Southeast UHN"
    When "uhgContractSubtypeHealthcare" equals one of "<uhgContractSubtypeHealthcare>"
    And "uhgMarketNumber" equals one of "<uhgMarketNumber>"
    Then contract is included in Pilot
    Examples:
      | uhgContractSubtypeHealthcare            | uhgMarketNumber |
      | Practitioner Agreement                  | 03413           |
      | Medical Group Agreement                 | 03413           |
      | Simplified Physician Agreement          | 03413           |
      | Simplified Practitioner Group Agreement | 03413           |
      | Simplified Medical Group Agreement      | 03413           |

  @TC627486
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC627486 - [RL3] Validate in pilot for West UHN
    Given "uhgSite" equals "West UHN"
    When "uhgContractSubtypeHealthcare" equals one of "<uhgContractSubtypeHealthcare>"
    And "uhgMarketNumber" equals one of "<uhgMarketNumber>"
    Then contract is included in Pilot
    Examples:
    # --These fields are included in both the Exari and UCM contract model. (Note: OCM Model has more elements than the Exari Model)
      | uhgContractSubtypeHealthcare            | uhgMarketNumber |
      | Practitioner Agreement                  | 36555           |
      | Medical Group Agreement                 | 36555           |
      | Simplified Physician Agreement          | 36555           |
      | Simplified Practitioner Group Agreement | 36555           |
      | Simplified Medical Group Agreement      | 36555           |

  @TC630781
  @Automated
  @Functional
  @Contract_Rules
  Scenario: TC630781 - [RL4] Validate NOT in pilot for invalid site
    When "uhgSite" does not equal one of Central UHN, Northeast UHN, Southeast UHN, West UHN
    Then contract is NOT included in Pilot

  @TC630782
  @Automated
  @Functional
  @Contract_Rules
  Scenario: TC630782 - [RL5] Validate NOT in pilot for invalid contract subtype
    When "uhgContractSubtypeHealthcare" does not equal one of Practitioner Agreement, Medical Group Agreement, Simplified Physician Agreement, Simplified Practitioner Group Agreement, Simplified Medical Group Agreement
    Then contract is NOT included in Pilot

  @TC630783
  @Automated
  @Functional
  @Contract_Rules
  Scenario: TC630783 - [RL6] [RL5] Validate NOT in pilot for invalid market number
    When "uhgMarketNumber" does not equal one of 03413, 13476, 13477, 13478, 13479, 13634, 36555, 45592, 45593, 45594, 45595, 45597
    Then contract is NOT included in Pilot

