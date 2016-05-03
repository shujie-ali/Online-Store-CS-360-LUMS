Feature: As a manager
  So i know how well my business is performing
  I want to record sales to my database

Background: Making sure that admininstrator is logged in
    Given administrator has signed up and logged in

Scenario: Adding new sales
    Given I am on the dashboard
    When I follow "Sales"
    When I follow "New"
    Then I should see "New Sale"
    When I select "Phy-100" from "myid[courseCode]"
    And I select "Amer Iqbal" from "myid[instructor]"
    Then I press "Submit"
