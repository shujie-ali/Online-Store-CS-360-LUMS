Feature: As a manager
  So i know how well my business is performing
  I want to record sales to my database

Background: Making sure that admininstrator is logged in
    Given administrator has signed up and logged in

Scenario: Adding new sales
    Given I am on the home page
    And I follow "Admin"
    Then I should see "Welcome to admin's page"
    When I follow "Sales"
    Then I should see "Sales"
    When I follow "New"
    Then I should see "New Sale"
    And I fill in "sale[customerID]" with "1"
	And I fill in "sale[orderID]" with "2"
	And I fill in "sale[bookID]" with "1"
	And I fill in "sale[quantity]" with "2"
	And I fill in "sale[discount]" with "0"
    Then I press "Create Sale"