Feature: Customer can order a book from the main website.

	As a book customer
	So that I can collect it on time 
	I want to order a book through the book order form by providing the details

Background: Admin ready 
  Given administrator has signed update
  Given administrator has logged in

Scenario:try to create a new user
	When I fill in  "Name" with "Shahroze"
	And I fill in "Roll Number" with "16110203"
	And I fill in "Mobile number" with "03001234567"
	And I select my book "MECO 121"
	And Press "next" 
	Then I should be on "Enter book information page"

Scenario: Purchase a book already in database:
	Given that I have created the user "Shahroze"
	And I am on "Enter book information" page
	When I select "Course code" as "MECO 121"
	And I select "Instructor" as "Daud"
	Then I should see "Price" as "Rs. 350"
	And I should see "Book title" as "Macroeconomics" 
	And I select "Place order"
	Then I should see a notice "Thankyou for placing order"
	And I should see my email "16110203@lums.edu.pk"
	And I should see my "Tracking ID"

Scenario: Purchase a book not in database:
	When I select "Other" in "Course code"
	And I fill in "Course Code" with "a fake course"
	And I fill in "Instructor" with a fake instructor
	And I select "Place order"
	Then I should see notice which contains "Your order has been requested."
	And I should see my email "16110203@lums.edu.pk"
	And I should see my "Tracking ID
