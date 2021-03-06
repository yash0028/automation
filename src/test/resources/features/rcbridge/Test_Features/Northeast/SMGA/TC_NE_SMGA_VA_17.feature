# Last updated on 
@SMGABusinessTestcases_VA
@releaseUnknown
@iterationUnknown
Feature: TC_NE_SMGA_VA_17
  
  @TC_NE_SMGA_VA_17
  @Manual
  @User_Interface
  @UAT_AUTO
  @Murty
  @UAT_AUTO_INITIAL_TRANSACTION
  @SMGA_INITIAL
  Scenario Outline: TC_NE_SMGA_VA_17 - [RL0] Author SMGA contract in <site>
	 Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for SMGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter HBPs Red Door
    And I select Provider Signatory
    And I enter Appendix 1
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    
    #Final capture
    
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA
    And I complete final capture by add provider using TIN
    
    #Activate
    And I Set Status as Active
    And I capture Contract Number

    #CMD Check
     And I Verify CMD and Capture Status
    
    
    Examples:    
       | site          | paperType     | TCName|
       | northeast uhn   | SMGA          | TC_NE_SMGA_VA_17|
    
     
  @TC_NE_SMGA_VA_17
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @SMGA_AMANDMENT
  @SMGA_RERUN
   Scenario Outline: TC_NE_SMGA_VA_17 - [RL0] Author SMGA contract in <site>
	
	Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"	 
    And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"
    And I select the contract
    
    #Draft Amendment
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I select Types of Amendments
    And I select Contract Applied in Amendments
    And I enter Contract Details in Amendments
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
#    And I enter Payment Appendix in Amendments for SMGA contracts
#    And I check Payment Appendix
    And I select Payment Appendix for SMGA contracts
    And I choose Additional Manuals
    And I enter Steerage
    And I enter Payment Appendix in Amendments for SMGA contracts
    And I check Payment Appendix
    And I enter Group Summary
    And I Complete Wizard

    #Amandment final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Appendix 2 in Amendments FinalCapture
    And I enter Payment Appendix in Amendments FinalCapture
#    And I select Provider Roster as None
    And I enter Group Summary
    And I Complete Wizard

	#Amendment CMD Checking
	And I Verify CMD and Capture Status
		
    
    Examples:    
       | site          | paperType     | TCName|
       | northeast uhn   | SMGA          | TC_NE_SMGA_VA_17|