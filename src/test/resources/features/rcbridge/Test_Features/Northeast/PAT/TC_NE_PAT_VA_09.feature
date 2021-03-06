# Last updated on
# Author commercial with 1 Mid-level Specialist for PAT contract, execute and load contract, verify contract fed_Standard.
@PATBusinessTestcases_VA
@releaseUnknown
@iterationUnknown
Feature: TC_NE_PAT_VA_09

  @TC_NE_PAT_VA_09
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_INITIAL_TRANSACTION_PAT
  @UAT_AUTO_INITIAL_TRANSACTION_PAT_NORTHEAST
  Scenario Outline: TC_NE_PAT_VA_09 - [RL0] Author PAT contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"

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
   #CMD Checking
    And I Verify CMD and Capture Status


    #NDB Check


    Examples:
      | site            | paperType   | TCName         |
      | northeast uhn   | PAT         | TC_NE_PAT_VA_09|
