Feature: Admin can view Puschase Report.

Background: Making sure that admininstrator is logged in
    #Given administrator has signed update
    #Given administrator has logged in

Scenario:try to create a new user
	When I am on purchase report
	When I follow "New"
    Then I fill in "Email" with "admin@onepoint.com"
    Then I fill in "Password" with "admin"
    And I press "Log in"
    Then I am on the home page
    
    #Given I am on
    #And I fill in "Customer[customerID]" with "1"
	#And I fill in "Mobile number" with "03001234567"
	#And I select my book "MECO 121"
	#And Press "next"