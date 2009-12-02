Feature: Story Carding
  In order to track features to be developed
  Customers will need to be able to create story cards

  Scenario: Add a new card from the index
    Given I am logged in
    And I am on the story card index page
    When I follow "Add a new card"
    Then I should be on the new story card page

  Scenario: Create a new card
    Given I am logged in 
    And I am on the new story card page
    When I fill in "Title" with "title of my card"
    And I fill in "Description" with "details for my card"
    And I press "Save"
    Then I should be on the story card index page
    And I should see "title of my card"
