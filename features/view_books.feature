Feature: As a manager
So I know what books I have
I want to view books in the database

Background: Making sure that admininstrator is logged in
    Given administrator has signed up and logged in 
    Given I have created a new book
    
Scenario: View all the books
  Given I am on the home page
  And I follow "Books"
  Then I should see "Books"
  And I should see "sse"
  And I should see "new author"