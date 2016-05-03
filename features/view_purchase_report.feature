Feature: Admin can view Puschase Report.
 As a manager
 So i know what i have purchased in different time periods
 I want to view purchase reports

Background: Making sure that admininstrator is logged in
    Given administrator has signed up and logged in
    Given I have created a Purchase

Scenario: Adding new sales
	Given I am on Purchase
    Then I should see "Id"
    Then I should see "Bookid"
    Then I should see "Quantity"
    Then I should see "Created at"
    And I should see "1"

