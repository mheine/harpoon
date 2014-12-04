Feature: Manage elections
  In order to fill official seats
  As admin / election committee member
  I want to be able to manage elections

  Scenario: Create Elections
  	Given I am on the "elections" page
  	And I follow "New Election"
  	And fill out the form
  	When I press "Create Election"
  	Then an election should have been created