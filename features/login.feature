@signin
Feature: As a user I should be able to sign in

@invalid_email
Scenario: invalid sign in
Given I am on Ayu website
When I enter invalid email ID/Password
And I click on sign in button
Then I should see the error message displayed

@unregistered_email
Scenario: signin through unregistered email
Given I am on Ayu website
When I enter the email which is not registered
And I click on sign in button
Then I should see the error message

@valid
Scenario: sign in
Given I am on Ayu website
When I enter all my credentials 
And click on sign in button
Then I should see homepage


