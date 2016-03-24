
Given /administrator has signed up/ do
  steps %q{
  Given I am on the home page
  When I follow "Signup"
  Then I fill in "admin[first_name]" with "Admin"
  Then I fill in "admin[last_name]" with "Admin"
  Then I fill in "admin[email]" with "admin@onepoint.com"
  Then I fill in "admin[password]" with "admin"
  Then I am on the home page
}

end

Given /administrator has logged in/ do
   steps %q{
      Given I am on the home page
      When I follow "Login"
      Then I fill in "Email" with "admin@onepoint.com"
      Then I fill in "Password" with "admin"
      And I press "Log in"
      Then I am on the home page
   }

end

Given /I have created a request/ do 
  steps %q{
      Given I am on the home page
  And I follow "Requests"
  Then I should see "Listing Requests"
  And I follow "New Request"
  When I fill in "Author" with "fake author"
  And I fill in "Edition" with "9th"
  And I fill in "Booktitle" with "Harry Potter"
  And I fill in "Instructor" with "Someone"
  And I fill in "Coursecode" with "Law 100"
  And I press "Create Request"
  Then I should see "Request was successfully created."
  }

end

Then /^I should have a user with email "([^"]*)"$/ do |email|
  assert Admin.find_by(email: email)

end

Then /^I should have a book "([^"]*)"$/ do |title|
  assert Book.find_by(bookTitle: title)

end

Then /^I delete request "([^"]*)"$/ do |req|
  @request = Request.find_by(author: req)
  assert @request.destroy
end

Then(/^I should see all of the sales$/) do
  rows = page.all('#table tr').size - 1
  Sale.count() > 0
end


Then(/^I should see all of the purchases$/) do
  rows = page.all('#table tr').size - 1
  Sale.count() > 0
end
