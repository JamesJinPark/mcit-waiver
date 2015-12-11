Feature: Administrator can view submitted waiver requests (1 point)
  As an administrator
  So that I can view waiver requests
  I want to view waiver requests 

Scenario: View all waiver history from home page
  Given I am on the home page
  When I follow "For Administrators"
  Then I should see "Listing waivers"

Scenario: Admin page exists
  Given I am on the admin page
  Then I should see "Listing waivers"

Scenario: Administrator manually adds new waiver
  Given I am on the admin page
  And I follow "New Waiver"
  And I fill in "First name" with "John"
  And I fill in "Last name" with "Smith"  
  And I fill in "Email" with "JohnSmith@seas.upenn.edu"
  And I fill in "Waiver class" with "CIS 999"
  And I fill in "Replacement class" with "CIS 000"
  And I fill in "Taken replacement class" with "Yes"
  And I press "Create Waiver"
  Then I should see "Waiver was successfully created."