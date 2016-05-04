
Given /administrator has signed up and logged in/ do
  steps %q{
  Given I am on the admin page
  Then I fill in "Email" with "admin@onepoint.com"
  Then I fill in "Password" with "admin"
  And I press "Log in"
  Then I am on the dashboard
  And I should see "Admin's Dashboard"
}
end

Given /I have created a sale/ do
  steps %q{
    Given I am on the dashboard
    When I follow "Sales"
    When I follow "New"
    Then I should see "New Sale"
    When I select "Phy-100" from "myid[courseCode]"
    And I select "Amer Iqbal" from "myid[instructor]"
    Then I press "Submit"
  }
end


Given /I have created a request/ do 
  steps %q{
  Given I am on the homepage
  Then I follow "Requests"
	Then I am on request
	When I follow "New"
	Then I am on new request
  When I fill in "Author" with "JK Rowling"
  And I fill in "Edition" with "9th"
  And I fill in "Booktitle" with "Harry Potter"
  And I fill in "Instructor" with "Someone"
  And I fill in "Coursecode" with "Law 100"
  And I press "Create Request"
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
  	When I follow "New"
  	Then I should see "New Purchase"
    When I select "Phy-100" from "myid[courseCode]"
    And I select "Amer Iqbal" from "myid[instructor]"
    And I fill in "quantity" with "1"
  	And I press "Submit"
  	Then I am on Purchase
  	And I should see "Quantity"
  	And I should see "1"
  }
end