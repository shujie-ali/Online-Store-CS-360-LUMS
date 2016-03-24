
Feature: make admin account
  As an the book store owner
  So that I can give employees access to the software
  I want to add new admins



Scenario: make admin account
  Given I am on the home page
  When I follow "Signup"
  Then I fill in "admin[first_name]" with "Admin"
  Then I fill in "admin[last_name]" with "Admin"
  Then I fill in "admin[email]" with "admin@onepoint.com"
  Then I fill in "admin[password]" with "admin"
  And I press "Create"
  Then I should have a user with email "admin@onepoint.com"