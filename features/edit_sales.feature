Feature: Edit a sale
  As a admininstrator
  So changes are reflected accurately
  I want to edit my sale
  
Background: Making sure that admininstrator is logged in
    Given administrator has signed up and logged in 
    Given I have created a sale
    
Scenario: Edit a sale
  When I follow "Edit"
  And I fill in "Discount" with "30"
  And I press "Create Sale"
  Then I should see "Discount" 
  And I should see "30"