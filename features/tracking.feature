Feature: Customer can track their orders.
 As a customer
 So that I know how long will it take before I recieve the order
 I track my ordre

Background:
  Given I am on the home page

Scenario: Valid Order ID entered
    When I fill in "Track" with "1"
    And I press "Track"
    Then there is order "1"

Scenario: Invalid order Id entered
    When I fill in "Track" with "1111"
    And I press "Track"
    Then I should see "Invalid Order ID"
