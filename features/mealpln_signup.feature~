Feature:Non - patient sign up through plans and pricing

Scenario Outline: (Non-Patient) Signup from the Plans & Pricing link
  Given I am on the Fitly homepage 
  When I click on PLANS & PRICING link
  And I click on "<started_btn>" button of each meal plan
  And I wait 5 seconds
  And I fill in the form with test data
  And I click on the Next button
  Then page should have the text Card on file:
  
Examples:
 | started_btn                                                      |
 |.//*[@id='container']/div[3]/div[2]/div[1]/div[2]/div[2]/div[10]/a|
 |.//*[@id='container']/div[3]/div[2]/div[2]/div[2]/div[3]/div[10]  |
 |.//*[@id='container']/div[3]/div[2]/div[3]/div[2]/div[2]/div[10]/a|
 |.//*[@id='container']/div[3]/div[2]/div[4]/div[2]/div[2]/div[10]/a|

