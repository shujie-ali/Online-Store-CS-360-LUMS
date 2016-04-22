Feature: Edit a book
  As an admininstrator
  So I can update my records
  I want to edit a book's information
  
Background: Making sure that admininstrator is logged in
    Given administrator has signed up and logged in 
    Given I have created a new book

Scenario: editing the given book
  When I follow "Edit"
  And I fill in "book[bookTitle]" with "CS300"
  And I press "Update Book"
  Then I should see "CS300"