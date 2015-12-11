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
  Then I should see "Waiver class"
  Then I should see "Replacement class"
  Then I should see "Taken replacement class"
  Then I should see "Comments"

Scenario: Submit waiver
  When I fill in "First name" with "John"
  And I fill in "Last name" with "Smith"  
  And I fill in "Email" with "JohnSmith@seas.upenn.edu"
  And I fill in "Waiver class" with "CIS 999"
  And I fill in "Replacement class" with "CIS 000"
  And I fill in "Taken replacement class" with "Yes"
  And I press "Create Waiver"
  Then I should see "Waiver was successfully created."

Scenario: Submit empty waiver
  When I fill in "First name" with ""
  And I fill in "Last name" with ""  
  And I fill in "Email" with ""
  And I fill in "Waiver class" with ""
  And I fill in "Replacement class" with ""
  And I fill in "Taken replacement class" with ""
  And I press "Create Waiver"
  Then I should see "Waiver was successfully created."

Scenario: Submit partial waiver
  When I fill in "First name" with "John"
  And I fill in "Last name" with ""  
  And I fill in "Email" with "JohnSmith@seas.upenn.edu"
  And I fill in "Waiver class" with ""
  And I fill in "Replacement class" with ""
  And I fill in "Taken replacement class" with ""
  And I press "Create Waiver"
  Then I should see "Waiver was successfully created."