Feature: login as admin
  As an the book store owner
  So that only authorized people can access the software
  I want to login feature

Scenario: login as administrator
  Given I am on the home page
  When I follow "Login"
  Then I fill in "Email" with "admin@onepoint.com"
  Then I fill in "Password" with "admin"
  And I press "Log in"
  Then I am on the home page