Feature:
	As a manager
	So i can add books to maintain record and for the customers to see
	I want to enter books 

Background: Admin ready 
  Given administrator has signed up
  Given administrator has logged in

Scenario: Add a new book purchased
	Then I am on new book page
	Then I fill in "book[courseTitle]" with "cs"
	Then I fill in "book[courseCode]" with "12"
	Then I fill in "book[instructor]" with "lums instructor"
	Then I fill in "book[school]" with "sse"
	Then I fill in "book[ourPrice]" with "300"
	Then I fill in "book[canotechPrice]" with "400"
	Then I fill in "book[numCopies]" with "1"
	Then I fill in "book[bookTitle]" with "CS360"
	Then I fill in "book[author]" with "new author"
	Then I fill in "book[edition]" with "2"
	Then I fill in "book[dept]" with "CS"
	Then I fill in "book[comment]" with "book"
	Then I press "Create Book"
	Then I should have a book "CS360"
