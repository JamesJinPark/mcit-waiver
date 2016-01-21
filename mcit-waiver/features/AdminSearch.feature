Feature: Administrator can search for specific waivers (1 point)
  As an administrator
  So that I can find specific waiver requests
  I want to be able to search waiver requests 

Scenario: Search for a Waiver
  Given I am on the home page
  Given I am not authenticated
  When I need two courses 
  Given I want to create a waiver
  When I follow "For Administrator"
  And I fill in "Email" with "admin@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  And I follow "List of All Waivers"
  And I fill in "search" with "james"
  Then I should see "James"
  Then I should see "Park"

Scenario: Search for pending Waivers
  Given I am on the home page
  Given I am not authenticated
  When I need two courses 
  Given I want to create a waiver
  Given I want to create another waiver
  When I follow "For Administrator"
  And I fill in "Email" with "admin@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  And I follow "List of All Waivers"
  And I fill in "search" with "pending"
  Then I should see "James"
  Then I should see "Park"