
Given /administrator has signed up and logged in/ do
  steps %q{
  Given I am on the admin page
  When I follow "Signup"
  Then I fill in "admin[first_name]" with "Admin"
  Then I fill in "admin[last_name]" with "Admin"
  Then I fill in "admin[email]" with "admin@onepoint.com"
  Then I fill in "admin[password]" with "admin"
  And I press "Create"
  Then I should have a user with email "admin@onepoint.com"
}
end

Given /I have created a sale/ do
  steps %q{
    Given I am on the home page
    And I follow "Admin"
    Then I should see "Welcome to admin's page"
    When I follow "Sales"
    Then I should see "Sales"
    When I follow "New"
    Then I should see "New Sale"
    And I fill in "sale[customerID]" with "1"
  	And I fill in "sale[orderID]" with "2"
  	And I fill in "sale[bookID]" with "1"
  	And I fill in "sale[quantity]" with "2"
  	And I fill in "sale[discount]" with "0"
    Then I press "Create Sale"
  }
end


Given /I have created a request/ do 
  steps %q{
      Given I am on the home page
  And I follow "Requests"
  Then I should see "Listing Requests"
  And I follow "New Request"
  When I fill in "Author" with "JK Rowling"
  And I fill in "Edition" with "9th"
  And I fill in "Booktitle" with "Harry Potter"
  And I fill in "Instructor" with "Someone"
  And I fill in "Coursecode" with "Law 100"
  And I press "Create Request"
  Then I should see "Request was successfully created."
  }
end

Then /^I should have a user with email "([^"]*)"$/ do |email|
  admin=Admin.where(email: email).first
  if admin==nil 
    assert false
  end
end

Then /^I should have a book "([^"]*)"$/ do |title|
  book= Book.find_by(bookTitle: title)
  if book==nil
    assert false
  end

end

Then /^I should only see a book "([^"]*)"$/ do |title|
   Book.find_by(bookTitle: title)
end

Then /^I should see a book "([^"]*)"$/ do |title|
   assert Book.find_by(bookTitle: title)
end

Then /^I delete request "([^"]*)"$/ do |req|
  @request = Request.find_by(author: req)
  @request.destroy
end

Then(/^I should see all of the sales$/) do
  rows = page.all('#table tr').size - 1
  Sale.count() > 0
end

Then /^there is order "([^"]*)"$/ do |t_id|
  @order =  Order.find_by(customerID: t_id)
  if @order != nil
    assert true
  end
end


Then(/^I should see all of the purchases$/) do
  rows = page.all('#table tr').size - 1
  Sale.count() > 0
end

Given /I have created a new book/ do
  steps %q{
    Given I am on new book page
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
  }
end

Given /I have created a Purchase/ do
  steps %q{
    Given I am on Purchase
  	Then I should see "Listing Purchases"
  	When I follow "New Purchase"
  	When I fill in "Bookid" with "12"
  	And I fill in "Quantity" with "2"
  	And I press "Create Purchase"
  	Then I should see "Purchase was successfully created."
  }
end