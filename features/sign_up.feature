As a Customer
I want to sign up for MoonDog services
So that I can have MoonDog developers work on my software

Scenario: View Sign-up Page
  Given I am on the home page
  When I follow "Register"
  Then I should be on the sign-up page  
  And I should see "Customer Sign-Up"


