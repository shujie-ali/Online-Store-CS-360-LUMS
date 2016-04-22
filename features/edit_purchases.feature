Feature: Edit a purchase
  As an admininstrator
  So I can update my records
  I want to edit my purchase record
  
Background: Making sure that admininstrator is logged in
    Given administrator has signed up and logged in 
    Given I have created a Purchase

Scenario: Editing the given book
  When I follow "Edit"
  And I fill in "Bookid" with "10"
  And I fill in "Quantity" with "1"
  And I press "Update Purchase"
  Then I should see "Purchase was successfully updated."