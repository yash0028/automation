# Last updated on 
@US1147690
@releaseUnknown
@iterationUnknown
Feature: US1147690 - Submit Practice Profile Name Change

  @TC703876
  @Manual
  @Functional
  Scenario: TC703876 - [RL0]
    Given a contractor has identified a provider needs a name change
    When they initiate the "Submit Practice Profile Name Change' process
    Then they are presented with the fields identified as "Data to be displayed on the UI" under "Transaction - Name Change" in the "Provider Update-Delta Submission - Data Matrix_CLM" spreadsheet in the Feature.
