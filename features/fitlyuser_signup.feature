Feature: Signup on Fitly 
As a user, I want to sign up with the Fitly web site so I can select meal plans according to my 
dietary profile and track my progress. 

Scenario:User (Non-Patient) Signup from the home page sign up link
  Given I am on the Fitly homepage 
  When I click on "SIGNUP" link
  And I fill in the form with test data
  And I click on the sign up button
  Then I should see the confirmation message
  And I close the confirmation message
  And choose Logout and clear browser cookies
  And I go to my email inbox 
  Then I should see an email informing me that my account has been created


 

 
 
 
 

 
