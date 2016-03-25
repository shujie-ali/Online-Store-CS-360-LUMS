Feature: I want to edit books thats i have entered inti the system
	As a manager
	So i can update my inventory
	I want to enter books purchased from vendor 

Background: Admin ready 
  Given administrator has signed up
  Given administrator has logged in

Scenario: Add a new book purchased
	Given I am on the home page
	When I follow "Purchases"
	Then I am on Purchase
	Then I should see "Listing Purchases"
	When I follow "New Purchase"
	When I fill in "Bookid" with "12"
	And I fill in "Quantity" with "2"
	And I press "Create Purchase"
	Then I should see "Purchase was successfully created."

