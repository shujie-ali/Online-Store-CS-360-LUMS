Feature: Delete a request on a paticular book
 As a manager
 So that I do not make unsatisfiable commitments to customers
 I want to delete requests that i cannot fulfill


Scenario: I want to delete a request
    Given I am on new request
    And I fill in "request[author]" with "Mary"
    And I fill in "request[edition]" with "9th"
    And I fill in "request[bookTitle]" with "Harry Potter"
    And I fill in "request[instructor]" with "Daud"
	And I fill in "request[courseCode]" with "MECO 121"
	And I press "Create Request"
	Then I delete request "Mary" 





	