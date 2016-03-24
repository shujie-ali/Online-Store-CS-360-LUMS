
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