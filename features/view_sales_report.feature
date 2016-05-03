Feature: Admin can view Sales Report.
 As a manager
 So i know how well my business is doing
 I want to view my sales report

Background: Making sure that admininstrator is logged in
    Given administrator has signed up and logged in
    Given I have created a sale

Scenario: Listing all sales
	Given I am on the dashboard
    When I follow "Sales"
    Then I should see "Id"
    Then I should see "Bookid"
    Then I should see "Quantity"
    Then I should see "Created at"
    And I should see "1"
