Feature: Change type of trip

   As a user
   I want to be able to update the type of my trips
   so that I can have it up to date

  Constraints/Prerequisites
  - User should be logged in
  - User should be on the dashboard
  - User needs to have an owned car with active services

  High-level requirements
  - The user should be able to see the list of trips he did organized per day.
  - By default the user will see the trips he did in the last week.

  Background:
    Given I am a logged-in user
    And I have an owned car with active services
    And I have a trip for that owned car

  Scenario: Access list of trips
    When I go to the Trip history
    Then I should be able to see Trips history details

  Scenario: See the default period of trips
    Given I have trips
    When I see my Trip history details
    Then I should see the trips of last week organized by date
    And per trip I should see the hour, type and end location

  Scenario: No trips
    Given I have no trips
    When I see the Trips history details
    Then I should see a message indicating I have no trips