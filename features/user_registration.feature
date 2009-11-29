Feature: User Registration
  As a visitor of the MoonDog site
  I want to register as a user
  So that I can participate in activities as a customer or developer

  Scenario: New User Registers
    Given I have no users
    And I am on the home page
    When I follow "Register"
    When I fill in "Username" with "Sam"
    And I fill in "Password" with "pass"
    And I fill in "Password Confirmation" with "pass"
    And I fill in "Email" with "sam@foo.bar"
    And I press "Save"
    Then I should be on the home page
    And a user should exist with username: "Sam", email: "sam@foo.bar"
    
  Scenario: Update existing user
    Given a user exists with username: "Sam", password: "pass", email: "sam@foo.bar"
    And I am logged in
    And I am on the home page
    When I follow "Edit profile"
    And I fill in "Email" with "sam@moondog.com"
    And I press "Save"
    Then I should be on the home page
    And a user should exist with username: "Sam", email: "sam@moondog.com"
    

