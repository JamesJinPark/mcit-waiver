Feature: Student can submit waiver request (1 point)
	As a student 
	So that I can request class waiver
	I want to submit a waiver request for the upcoming semester

Background: Start from Waiver Request Submission page
  Given I am on the home page
  When I follow "For Students"
  Then I should see "First name"
  Then I should see "Last name"
  Then I should see "Email"
  Then I should see "Course"
  Then I should see "Replacement class"
  Then I should see "Taken replacement class"
  Then I should see "Documentation upload"
  Then I should see "Comments"

Scenario: Submit waiver without documentation upload 
  Given I am not authenticated
  When I need two courses
  Given I am on the home page
  When I follow "For Students"
  When I fill in "First name" with "John"
  And I fill in "Last name" with "Smith"  
  And I fill in "Email" with "JohnSmith@seas.upenn.edu"
  And I select "CIT592" from "waiver_course_id"
  And I fill in "Replacement class" with "CIS 000"
  And I fill in "Taken replacement class" with "Yes"
  And I fill in "Comments" with "I love MCIT"
  And I press "Create Waiver"
  Then I should see "Waiver was successfully created."

Scenario: Cannot submit waiver with non-seas email 
  When I fill in "First name" with "John"
  And I fill in "Email" with "JohnSmith@gmail.com"
  And I fill in "Replacement class" with "CIS 000"
  And I fill in "Taken replacement class" with "Yes"
  And I fill in "Comments" with "I love MCIT"
  And I press "Create Waiver"
  Then I should see "Email must be a Penn email address."

Scenario: Cannot submit partial waiver due to validations 
  When I fill in "First name" with "John"
  And I fill in "Email" with "JohnSmith@seas.upenn.edu"
  And I fill in "Replacement class" with "CIS 000"
  And I fill in "Taken replacement class" with "Yes"
  And I fill in "Comments" with "I love MCIT"
  And I press "Create Waiver"
  Then I should see "Last name can't be blank"