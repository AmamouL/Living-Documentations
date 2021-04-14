Feature: Switch from studied to Complete state
  Scenario Outline: Stwitch to Complete State
    Given  a studied folder
    When a document is invalid "<Check>"
    Then the folder state should be  "<State>"
    And client should be notified
    Examples:
    | Check    | State      |
    | True     | incomplete   |
    | False    | complete |
  
