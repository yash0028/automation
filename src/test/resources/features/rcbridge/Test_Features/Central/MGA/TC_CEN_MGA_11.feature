# Last updated on
@SPGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: MGA Business Testcases_IN

  @TC_CEN_MGA_IN_11
  @Manual
  @User_Interface
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"
  	
  	#DRAFT
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for MGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter Article Page
    And I enter Signature Block
    And I enter Additional Locations
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Regulatory Appendices
    And I enter Provider Roster
    And I enter Group Summary
    Then I Complete Wizard

    Examples:
      | site          | paperType     | TCName           |
      | central uhn   | MGA           | TC_CEN_MGA_IN_11 |
