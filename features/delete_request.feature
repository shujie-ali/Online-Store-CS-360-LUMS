Feature: Delete a request on a paticular book
 As a manager
 So that I do not make unsatisfiable commitments to customers
 I want to delete requests that i cannot fulfill

Background: Admin ready 
  Given administrator has signed update
  Given administrator has logged in

Scenario: I want to add  a request
	Given I am on the home page
	When I follow "Requests"
	And I am I "
	Then I fill in "request[author]" with "Shahroze"




	