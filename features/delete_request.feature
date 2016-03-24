Feature: Delete a request on a paticular book
 As a manager
 So that I do not make unsatisfiable commitments to customers
 I want to delete requests that i cannot fulfill

Background: Admin ready 
  Given administrator has signed update
  Given administrator has logged in

Scenario: I want to delete a request
	Given I am on the home page
	When I follow "Requests"
	When I am on request
	When I follow "New Request"
	And I fill in "request[author]" with "Mary"
	And I fill in "request[edition]" with "9th"
	And I fill in "request[bookTitle]" with "Harry Potter"
	And I fill in "request[instructor]" with "Daud"
	And I fill in "request[courseCode]" with "MECO 121"
	And I press "Create Request"
	Then I should see "Mary" 
	Then I delete request "Mary" 





	