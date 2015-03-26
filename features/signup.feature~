Feature: Signup on Fitly

Background:
Given I am on the Fitly homepage 

Scenario:Practitioner signup
As a registered dietician or registered nutritionist, I want to sign up for a practitioner account 
so that I may create meal plans for patients. 

When click on “Practitioner Login/Signup” link
And I click on the "Sign up now" link
And I fill in all valid information on the sign up form
And I click the "submit" button
Then I should see the confirmation message
And I go to my email inbox 
Then I should see an email informing me that my account has been created and is pending approval

Scenario:User (Non-Patient) Signup
As a user, I want to sign up with the Fitly web site so I can select meal plans according to my 
dietary profile and track my progress. 

When I click on "sign up" link
And fill in the signup form with test data
Then I should see the confirmation message
And I go to my email inbox 
Then I should see an email informing me that my account has been created

Scenario:Patient Signup using Practitioner code
As a patient, I want to sign up with the Fitly web site using the practitioner code I received from my 
dietician so I can select meal plans according to my dietary profile and track my progress. 

When I click on "sign up" link
And fill in the signup form with test data and practitioner code
And I select the Insurance provider
Then I should see a message “Did you know you may be eligible for 6 dietitian visits ?"
And I choose "yes" and click "submit"
Then A confirmation message should be displayed
And I go to my email inbox as a patient 
Then I should see an email confirming that the account is created
And I go to my email inbox as a practitioner
Then I should see an email confirmation that the patient has signed up

Scenario:Patient Signup with Invitation
As a patient, I want to sign up with the Fitly web site using the signup link I received 
from my practitioner so I can receive meal plans according to my dietary profile and track my progress.

When I click on "sign up" link
And fill in the signup form with test data 
Then the practitioner code should be visible in the form
And I select the Insurance provider
Then I should see a message “Did you know you may be eligible for 6 dietitian visits?"
And I choose "yes" and click "submit"
Then A confirmation message should be displayed
And I go to my email inbox as a patient 
Then I should see an email confirming that the account is created
And I go to my email inbox as a practitioner
Then I should see an email confirmation that the patient has signed up





