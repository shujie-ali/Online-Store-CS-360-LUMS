Feature: Admin can view Puschase Report.
 As a manager
 So i know what i have purchased in different time periods
 I want to view purchase reports

Background: Making sure that admininstrator is logged in
    #Given administrator has signed update
    #Given administrator has logged in

Scenario: Adding new sales
	When I am on purchase report
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
    When I am on purchase report
	Then I should see all of the purchases
