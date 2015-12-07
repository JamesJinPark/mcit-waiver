Feature: Administrator can view submitted waiver requests (1 point)
  As an administrator
  So that I can view all waiver requests
  I want to view all waiver requests 

Scenario: View all waiver history
  Given I am on the home page
  When I follow "For Administrators"
  Then I should see "Listing waivers"
