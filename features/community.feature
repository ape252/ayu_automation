@communit
Feature: To use the services

@rsvp
Scenario: To rsvp an event
Given I am on homepage
When click on community tab
And I click on rsvp button
Then I should be able to see the chenged status

@reservation
Scenario: to make a reservation
Given I am on homepage
When click on community tab
And I enter all details under reservation tab
Then I should be able to submit it successfully

@maintaince
Scenario: To request maintainance
Given I am on homepage
When click on community tab
And I click on maintaince tab
Then I should be able to fillin all the details
