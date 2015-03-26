Feature: Account Maintenance

Background:
Given I am on the Fitly homepage 

Scenario:Practitioner Dashboard
As an approved practitioner, I want to access my dashboard so I can invite potentials patients 
to use Fitly and create meal plans for existing patients. 

When I click on “Practitioner Login/Signup” link
Then Practitioner dashboard and list of current patients should be displayed
And I click on "Add Patients" and enter email address and click on "Send Invite" button
Then the patient should receive an email with a link to the sign up page
And the practitioner code should be visible

Scenario:Patient search and create a meal plan on Dashboard

When I click on “Practitioner Login/Signup” link
And on the practitioner dashboard I add a patient name in the search box
Then I should see the list of current patients
And I click on the patient name
Then the patient dashboard should be displayed
And I click on "Create Meal Plan " button
Then I should see "" 

Scenario:Patient search and change a meal plan on Dashboard

When I click on “Practitioner Login/Signup” link
And on the practitioner dashboard I add a patient name in the search box
Then I should see the list of current patients
And I click on the patient name
Then the patient dashboard should be displayed
And I click on "Meal Plan " button and change the values in the meal plan
And I should not be able to edit any other option on the dashboard

Scenario:Patient Dashboard
As a registered patient, I want to access my dashboard so I can see my dietary profile, 
meal plan, dietician, progress, messages, notifications and health information. 

When click on “Sign in” link
And login with valid credentials
Then Patient dashboard should be displayed

Scenario:Patient Dashboard without a dietitian
As a user, I want to access my dashboard so I can see my dietary profile, meal plan, 
progress, messages and health information. 

When click on “Sign in” link
And login with valid credentials
Then Patient dashboard should be displayed
And dietitian should not be displayed








