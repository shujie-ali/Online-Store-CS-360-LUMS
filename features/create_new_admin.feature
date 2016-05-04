Feature: create new admin
  As an the book store owner
  So that I can authorized managers to access the software
  I want to add new admins
 
Background: Making sure that main admininstrator is logged in
    Given administrator has signed up and logged in

Scenario: create new admin
  Given I am on the dashboard
  When I follow "Create New Admin"
  Then I fill in "admin[first_name]" with "second"
  Then I fill in "admin[last_name]" with "admin"
  Then I fill in "admin[email]" with "second_admin@onepoint.com"
  Then I fill in "admin[password]" with "secondadmin"
  Then I am on the dashboard