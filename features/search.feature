Feature: Customer can search for books.
 As a customer
 So that I know if my required book is avaliable or not.
 I can get a book of my desire

Background:
  Given I am on the home page
  
  Scenario: search a book
	Then I fill in "search" with "anthropology"
	Then I press "Search"
	Then I should only see a book "anthropology"
