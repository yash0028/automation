# Last updated on 
@US1549016
@2019.PI07
@2019.PI07.03
@releasePast
@iterationPast
Feature: US1549016 - Create Mass Actions display view (UI) (Optum)

  @TC720665
  @Manual
  @Functional
  Scenario: TC720665 - [RL0] view top-level of active mass updates
    Given that one or Mass Update project is actively running and updating Optum legacy systems
    When the CMD dashboard for 'Active' Mass Updates is viewed
    Then demonstrate that a 'top-level' view of all active Mass Update projects is displayed
    And the data columns displayed include:[Mass Update Id + ???? + ????]

  @TC720676
  @Manual
  @Functional
  Scenario: TC720676 - [RL1] open mass action project to view details
    Given that the CMD dashboard is displaying more than one Active Mass Update project
    When the user selects one of the Active Mass Update projects
    Then a window is opened showing transaction details for that Active Mass Update project including: [Successful + Error + Needs Action + Underway (sp?) ]

  @TC720682
  @Manual
  @Functional
  Scenario: TC720682 - [RL2] view top-level of complete mass updates
    Given that one or Mass Update project is completed
    When the CMD dashboard for 'Completed' Mass Updates is viewed
    Then demonstrate that a 'top-level' view of all 'Completed' Mass Update projects is displayed
    And the data columns displayed include:[Mass Update Id + ???? + ????]

  @TC720686
  @Manual
  @Functional
  Scenario: TC720686 - [RL3] open completed mass action project to view details
    Given that the CMD dashboard is displaying more than one Completed Mass Update projects
    When the user selects one of the Completed Mass Update projects
    Then a window is opened showing transaction details for that Completed Mass Update project including: [Successful + Error + Needs Action + Underway (sp?) ]

  @TC820418
  @Automated
  @User_Interface
  Scenario Outline: TC820418 - view second page of active mass updates
    Given that one or Mass Update project is actively running and updating Optum legacy systems
    When the CMD dashboard for 'Active' Mass Updates is viewed
    And I navigate to page "<pageNum>"
    Then demonstrate that a 'top-level' view of all active Mass Update projects is displayed
    And the data columns displayed include:[Mass Update Id + ???? + ????]
    Examples:
      | pageNum |
      | 2       |
      | 3       |

  @TC820420
  @Manual
  @Acceptance
  Scenario Outline: TC820420 - view second page of complete mass updates
    Given that one or Mass Update project is completed
    When the CMD dashboard for 'Completed' Mass Updates is viewed
    And I navigate to page "<pageNum>"
    Then demonstrate that a 'top-level' view of all 'Completed' Mass Update projects is displayed
    And the data columns displayed include:[Mass Update Id + ???? + ????]
    Examples:
      | pageNum |
      | 2       |
      | 3       |

