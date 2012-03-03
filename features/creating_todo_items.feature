Feature: Creating a task item
So that I can remember what to do
As a user
I want to be able to create task items

  Scenario: Creating a new task item
    Given I have something I need to do
    When I create a task item named "Go to the store"
    Then I see "Go to the store" in my list of task items

    
