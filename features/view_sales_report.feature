Feature: Admin can view Sales Report.
 As a manager
 So i know how well my business is doing
 I want to view my sales report

Background: Making sure that admininstrator is logged in
    Given administrator has signed up and logged in

Scenario: Listing all sales
    When I am on sales report
	Then I should see all of the sales
