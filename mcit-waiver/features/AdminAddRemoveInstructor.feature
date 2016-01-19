Feature: Administrator can add and remove instructors (1 point)
	As an Admin
	So that I can either add or remove instructors
	I want to see links for adding and removing instructors

Scenario: Admin can add Instructor and remove Instructor 
  Given I am on the home page
  Given I am not authenticated
  When I follow "For Administrator"
  And I fill in "Email" with "admin@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  And I follow "List of All Instructors"
  Then I should not see "add@seas.upenn.edu"
  And I follow "Add New Instructor"
  Then I should see "Sign up"
  Then I should see "Email"
  Then I should see "Password"
  Then I should see "Password confirmation"
  And I fill in "Email" with "add@seas.upenn.edu"
  And I fill in "Password" with "1234567890"    
  And I fill in "Password confirmation" with "1234567890"  
  And I press "Sign up"
  And I follow "For Administrator"
  And I follow "List of All Instructors"
  Then I should see "add@seas.upenn.edu"
  And I follow "Destroy"
  And I follow "List of All Instructors"
  Then I should not see "add@seas.upenn.edu"