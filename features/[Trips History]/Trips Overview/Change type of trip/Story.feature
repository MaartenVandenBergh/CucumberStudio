Feature: Change type of trip

   As a user
   I want to be able to update the type of my trips
   so that I can have it up to date

  Constraints/Prerequisites
  - User should be logged in
  - User should be on the dashboard
  - User needs to have an owned car with active services
  - User needs to have a trip

  High-level requirements
  - User should be able to change the type of his trip

  Background:
    Given I am a logged-in user
    And I have an owned car with active services
    And I have a trip for that owned car

  # Scenario: Access change type
  #   Given that I am seeing "Trips history details"
  #   When I check one of the trips
  #   Then I should be able to see an option to change the type of the trip

  # Scenario: Change type
  #   Given that I am seeing "Trips history details"
  #   When I change the type of my trip
  #   Then i should see

  Scenario: Change type
    Given that I am seeing Trips history details
    When I check one of the trips
    Then I should be able to change the type of the trip