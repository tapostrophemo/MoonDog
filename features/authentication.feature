Feature: User Authentication
  As a visitor of the MoonDog site
  I want to log into the system
  So that I can participate in activities related to projects
  
  Background:
    Given a user exists with username: "Sam", password: "pass"
    And I am on the home page

  Scenario: Login
    When I follow "Login"
    And I fill in "Username" with "Sam" 
    And I fill in "Password" with "pass"
    And I press "Login"
    Then I should be on the home page
    And I should see "Successfully logged in"
    And I should see "Logout"
    And I should see "Edit profile"
    And I should not see "Login"
    And I should not see "Register"

  Scenario: Logout
    Given I am logged in
    When I follow "Logout"
    Then I should be on the home page
    And I should see "Successfully logged out"
    And I should see "Login"
    And I should see "Register"
    And I should not see "Logout"
    And I should not see "Edit profile"

  Scenario: Unsuccessful login
    When I follow "Login"
    And I fill in "Username" with "Sam"
    And I fill in "Password" with "badpass"
    And I press "Login"
    Then I should be on the login page
    And I should see "Invalid Username/Password"
