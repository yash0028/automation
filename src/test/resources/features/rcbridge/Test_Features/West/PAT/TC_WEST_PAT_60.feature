# Last updated on
@PATBusinessTestcases_OR
@releaseUnknown
@iterationUnknown
Feature: TC_WEST_PAT_OR_60

  @TC_WEST_PAT_OR_60
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_INITIAL_TRANSACTION_PAT
  Scenario Outline: TC_WEST_PAT_OR_60 - [RL0] Author PAT contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_WEST.csv" of "<site>" and paper type "<paperType>"

    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for PAT Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I select Provider Signatory
    And I enter Contract Details
    And I enter Appendix 1
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    #And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard

    #Workflow Approval at Local contract level

    #Workflow Approval at Pricing level

    #Final Capture process

    And I Start Workflow
    #check for Tier Approvals
    And I Start Process for Initial Transaction
    #Approval
    And I Approve Payment Appendix
    #Final Capture process cont.
    #check for Tier Approvals
    And I Set Status as Final Pending QA
    And I complete final capture by add provider using TIN

    #Activate
    And I Set Status as Active

   #CMD Checking
    And I Verify CMD and Capture Status

    #NDB check


    Examples:
      | site          | paperType     | TCName           |
      | west uhn      | PAT           | TC_WEST_PAT_OR_60|

