Feature: Delete a request on a paticular book
	As a manager
	So that I do not make unsatisfiable commitments to customers
	I want to delete requests that i cannot fulfill

Background: Given that I am logged in as administrator

Scenario: I want to delete a request
	Given that I am on "Requests page"
	Then I should see "abc" request
	When i follow "Destroy"
	Then I should see a confirmation asking "Are you sure"
	When I follow "OK"
	Then I should see "Request was successfully destroyed."





	