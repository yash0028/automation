# Last updated on 
@CLM_UAT
@RFP
@US1082297
@2018.PI02
Feature: US1082297 - Create External Data Query for RFP

  @TC493889
  @Manual
  @Functional
  Scenario: TC493889 - Validate RFP external data query
    Given UHC will need to provide Exari with RFP data including:
      | Place of Service  |
      | Line of Business  |
      | Specialty Type    |
      | Organization Type |
    When the Exari calls RFP with Provider Specialty
    Then an external data query will return a list of fields:
      | Credentialing Required       |
      | Super Script                 |
      | Credentialing Entity         |
      | Accepting Applications (E&I) |
      | Accepting Applications (C&S) |
      | Accepting Applications (M&V) |
