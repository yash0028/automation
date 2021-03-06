# Last updated on 
@Sachin
@Sheham
@US1541757
@2019.PI06
@2019.PI06.03
@releasePast
@iterationPast
Feature: US1541757 - [Continued] Route and Present Retro Request to Market Lead

  @TC709180
  @Manual
  @Functional
  @Sachin
  @Sheham
  Scenario: TC709180 - [RL0]
    Given A contractor or initiator has initiated a retro form
    When they have completed the retro initiation form
    Then the request will be routed to the appropriate Market Lead's task list

  @TC734367
  @Manual
  @Functional
  @Sachin
  @Sheham
  Scenario: TC734367 - [RL1]
    Given an "initiate retro" request task is completed
    When the Market Lead opens the task
    Then all of the data in fields from the "Initiate Retro" is displayed in edit mode and can be modified
    And the retro request initiator is informed if the data in the fields are modified -if the task is Approved
    And when denied, the fields are reset to the original

  @TC734368
  @Manual
  @Functional
  @Sachin
  @Sheham
  Scenario: TC734368 - [RL2]
    Given an initiate retro form is completed by requestor
    When the task is routed to Market Lead
    Then the task is assigned a Due Date of two business days

  @TC734369
  @Manual
  @Functional
  @Sachin
  @Sheham
  Scenario: TC734369 - [RL3]
    Given an "initiate retro" request task is completed by requestor
    When the Market Lead opens the task
    Then there is a "Market Lead Decision" section at the top
    And there is Help text "Please review the below information regarding a Retro Approval Request. You will need to Approve or Deny the request within 2 business days. If denying the request, a Denial Reason and Comments are required."
    And Market lead has 3 decision options- "Approve", "Deny", "Request Info"
    And a comments field to write in user input - "Comments" field will be mandatory only if "Deny" or "Request Info." is selected, otherwise it is optional.
    # Note- System must capture date and time of the comments added.

  @TC734370
  @Manual
  @Functional
  @Sachin
  @Sheham
  Scenario: TC734370 - [RL4]
    Given an "initiate retro" request task is opened by a Market Lead
    When the Market Lead selects "Deny"
    Then another cascading drop down option labeled "Denial Reason" is required with the following drop downs:
      | Settlement                        |
      | Change the Planned Effective Date |
      | Duplicate                         |
      | Requested Closure                 |
      | Other                             |

