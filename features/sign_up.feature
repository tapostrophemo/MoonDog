As a Customer
I want to sign up for MoonDog services
So that I can have MoonDog developers work on my software

Scenario: View Sign-up Page
  Given I am on the home page
  When I follow "Register"
  Then I should be on the sign-up page  
  And I should see "Customer Sign-Up"


Scenario: Register for service
  Given I am on the sign-up page
  When I fill in "Last name" with "Doe"
  And I fill in "Email" with "john@gmail.com"
  And I fill in "Phone" with "1231231231"
  And I fill in "City" with "Cleveland"
  And I fill in "State" with "Ohio"
  And I press "Save changes"
  Then I should see "Registration Successful"
  And I should be on the home page
