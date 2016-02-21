Feature: Waiver request home page exists (1 point)
	As a user
	So that I can either request class waivers or see class waivers
	I want to see links for administrators and for students

Scenario: Home page exists
  Given I am on the home page
  Then I should see "For Administrator" 
  Then I should see "For Instructors" 
  Then I should see "For Students"

Scenario: Waiver submission page exists
  Given I am on the home page
  When I follow "For Students"
  Then I should see "New waiver"