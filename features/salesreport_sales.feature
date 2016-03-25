Feature: Admin can view Sales Report.
 As a manager
 So i know how well my business is doing
 I want to view my sales report

Background: Making sure that admininstrator is logged in
    #Given administrator has signed update
    #Given administrator has logged in

Scenario: Adding new sales
	When I am on sales report
	When I follow "New"
	Then I am on new sales
    And I fill in "sale[customerID]" with "1"
	And I fill in "sale[orderID]" with "2"
	And I fill in "sale[bookID]" with "1"
	And I fill in "sale[quantity]" with "2"
	And I fill in "sale[discount]" with "0"
    Then I press "Create Sale"
    #Then sale with id "1"

Scenario: Listing all sales
    When I am on sales report
	Then I should see all of the sales
