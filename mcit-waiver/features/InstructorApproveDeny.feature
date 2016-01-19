Feature: Instructor can approve and deny waivers (1 point)
	As an Instructor
	So that I can either approve class waivers or deny class waivers
	I want to see links for approval and denial

Scenario: Instructor should only see classes that he teaches
  Given I am on the home page
  Given I am not authenticated
  When I need two courses
  When I follow "For Instructors"
  And I fill in "Email" with "CIT591@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  Then I should see "Listing courses"
  Then I should see "CIT591"
  Then I should not see "CIT592"
  When I follow "Instructor Logout"
  When I follow "For Instructors"
  And I fill in "Email" with "CIT592@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  Then I should see "Listing courses"
  Then I should see "CIT592"
  Then I should not see "CIT591"
 
Scenario: Instructor can view status of waiver and approve and/or deny
  Given I am on the home page
  Given I am not authenticated
  When I need two courses 
  Given I want to create a waiver
  When I follow "For Instructors"
  And I fill in "Email" with "CIT591@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  And I follow "Show"
  Then I should see "Pending"
  Then I should not see "Approved"
  Then I should not see "Denied"
  And I follow "Approve"
  Then I should not see "Pending"
  Then I should see "Approved"
  Then I should not see "Denied"
  And I follow "Back"
  And I follow "Deny"
  Then I should not see "Pending"
  Then I should not see "Approved"
  Then I should see "Denied"

Scenario: Instructor can edit waiver and add comments
  Given I am on the home page
  Given I am not authenticated  
  When I need two courses 
  Given I want to create a waiver
  When I follow "For Instructors"
  And I fill in "Email" with "CIT591@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  And I follow "Show"
  And I follow "Edit"
  And I fill in "Comments" with "01/19/2016: (Instructor comments) This student must submit transcript." 
  And I press "Update Waiver"
  Then I should see "Waiver was successfully updated."
  Then I should see "01/19/2016: (Instructor comments) This student must submit transcript."
