# Last updated on
@MGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: TC_CEN_MGA_IN_25

  @TC_CEN_MGA_IN_25
  @Manual
  @User_Interface
  @UAT_AUTO_TESTING
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA
  @generate_link
    @4j1
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"

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
    And I select Provider Roster as None
    And I enter Group Summary
    Then I Complete Wizard

     #Final Capture - Provider Roster (Add one or more providers to the roster)
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA
    And I complete final capture for MGA by add provider using TIN

#    And I Start Final Capture
#    And I enter Contract Details in Final Capture
#    And I enter Provider Signatory
#    And I enter Our Signatory
#    And I enter Market Exception Grid in Final Capture
#    And I enter Market Exception Grid
#    And I enter Clause Language
#    #Select "Providers based on individual TIN, MPIN and NPI" not implemented***
#    And I add provider using TIN
#    And I select Providers
#    And I verify Providers
#    And I acknowledge the warning
#    And I enter Group Summary
#    Then I Complete Wizard
    And I Set Status as Active
    And I capture Contract Number
	
	#cmd CHECK
	And I Verify CMD and Capture Status
	     

    Examples:
          | site          | paperType     | TCName           |
          | central uhn   | MGA           | TC_CEN_MGA_IN_25 |
 
  
  @TC_CEN_MGA_IN_25
  @Manual
  @User_Interface
  @UAT_AUTO_MAKE_A_CORRECTION
  @UAT_AUTO_AMENDMENT
  @AMENDMENT_ALL_MGA
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
	    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"	 
	    And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"
	    
        #Make Correction - Provider Roster (Add one or more providers to the roster)
        And I click Make Correction
        And I enter Market Exception Grid in Make Correction
        And I enter Market Exception Grid
        #Select "Providers based on individual TIN, MPIN and NPI" not implemented***
        And I add provider using TIN
        And I select Providers
        And I enter Provider Start Date
        And I enter retro code in Provider Roster
        And I acknowledge the warning
        And I enter Group Summary
        Then I Complete Wizard
        
        #cmd CHECK
	    And I Verify CMD and Capture Status

    Examples:
          | site          | paperType     | TCName           |
          | central uhn   | MGA           | TC_CEN_MGA_IN_25 |
