Feature: Check inserted password
   As a user I want to be able to check which password I am inserting so that I can know that is the correct password.

Scenario:The user provides valid credentials then they are successfully logged in at customer portal
   Given User enter with a valid credentials and click in the login button
   Then User should be login at CP

Scenario:The user inserts an email and password with correct format then a validation icon should be shown.
   Given User inserts an email and password with correct format
   Then a validation icon should be shown