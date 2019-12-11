Feature: Reject new version of T&C (per account)

  As a user I want to be able to reject a new version of the T&C so that I can stop the services in case I do not agree with the new T&C
  
  Background:
    Given I am logged out
    And I have one connected car
    And I have accepted T&C before
    But new T&C are published

  Scenario:
    When I log in
    Then I should be prompted to accept the new T&C

  Scenario:
    Given I am prompted
    When I click on the CTA to reject the new version of T&C
    Then I should see a message
    """
    Are you sure you want to reject the T&C ? All car services (and any prepaid data bundles) will stop working, however all device information will still be stored for insurance purposes. This will impact all your connected cars. 
    """
    And a ConfirmCTA
    And a CancelCTA
    And a CloseCTA


    When I click on the CancelCTA or on the CloseCTA
    Then I should be redirected to the homePage
    When I clock on the ConfirmCTA and the rejection is successfull
    Then I should see a success message


  Scenario: See a new published version of the T&C of Connected Services
    Given I have active services
    And without UBI

  Scenario: See a new published version of the T&C of Connected Services
    Given I do not have active services
    But has previously accepted T&C for the connected services

  Scenario: See a new published version of the T&C of Connected Services
    Given I do not have active services
    But has previously accepted T&C for the connected services
    Given Start to type your Given step here