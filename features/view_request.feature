Feature: Admin can view the request
  As an admininstrator
  So that I can see what other books to order from vendor
  I want to view requests from customer
  
Background: Making sure that admininstrator is logged in
    Given administrator has signed up and logged in 
    Given I have created a request

Scenario: View a request 
  Given I am on the home page
  And I follow "Requests"
  Then I should see "Listing Requests"
  And I should see "Harry Potter"
  When I follow "Show"
  Then I should see "JK Rowling"
  
