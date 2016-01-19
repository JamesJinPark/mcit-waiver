Feature: Administrator can view submitted waiver requests (1 point)
  As an administrator
  So that I can view waiver requests
  I want to view waiver requests 

Scenario: Log In Page exists
  Given I am on the home page
  When I follow "For Administrator"
  Then I should see "Email"
  Then I should see "Password"

Scenario: View Admin Dashboard
  Given I am on the home page
  Given I am not authenticated
  When I follow "For Administrator"
  And I fill in "Email" with "admin@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  Then I should see "Instructors"
  Then I should see "List of All Instructors"
  Then I should see "Add New Instructor"
  Then I should see "Courses"
  Then I should see "List of All Courses"
  Then I should see "Add New Course"
  Then I should see "Waivers"
  Then I should see "List of All Waivers"
  Then I should see "Admin Logout"

Scenario: View All Instructors 
  Given I am on the home page
  Given I am not authenticated
  When I follow "For Administrator"
  And I fill in "Email" with "admin@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  And I follow "List of All Instructors"
  Then I should see "Listing Instructors"

Scenario: View All Courses  
  Given I am on the home page
  Given I am not authenticated
  When I follow "For Administrator"
  And I fill in "Email" with "admin@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  And I follow "List of All Courses"
  Then I should see "Listing courses"

Scenario: View All Waivers
  Given I am on the home page
  Given I am not authenticated
  When I follow "For Administrator"
  And I fill in "Email" with "admin@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  And I follow "List of All Waivers"
  Then I should see "Listing waivers"

Scenario: Admin can log out
  Given I am on the home page
  Given I am not authenticated
  When I follow "For Administrator"
  And I fill in "Email" with "admin@seas.upenn.edu"
  And I fill in "Password" with "1234567890"  
  And I press "Log in"
  Then I should see "Admin Logout"
  And I follow "Admin Logout"
