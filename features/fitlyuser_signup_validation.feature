Feature:Non - patient sign up validations check

Scenario Outline: Failed signup
    Given I am on the Fitly homepage
    When I click on "SIGNUP" link
    And I input "<invalid value>" in "<field>"
    And I click on "Sign Up!"
    Then I should see "<error message>" in label "<field show error message>"
  Examples:
 | field                             | invalid value | field show error message                                | error message   | 
 |.//*[@id='signup_request_first']   |               |.//*[@id='new_signup_request']/div[2]/div[1]/div[2]/span |Must be provided |
 |.//*[@id='signup_request_last']    |               |.//*[@id='new_signup_request']/div[2]/div[1]/div[4]/span |Must be provided |
 |.//*[@id='signup_request_dob']     |               |.//*[@id='new_signup_request']/div[2]/div[2]/div[5]/span |Must be provided |
 |.//*[@id='signup_request_email']   |               |.//*[@id='new_signup_request']/div[2]/div[1]/div[6]/span |Must be provided |
 |.//*[@id='signup_request_email']   |abc@abc@gmail.com|.//*[@id='new_signup_request']/div[2]/div[1]/div[6]/span|Invalid email   |
 |.//*[@id='signup_request_password']|               |.//*[@id='new_signup_request']/div[2]/div[1]/div[8]/span |Must be provided |
 |.//*[@id='signup_request_password']|fitlytest1     |.//*[@id='new_signup_request']/div[2]/div[1]/div[8]/span |doesn't match Password|
 |.//*[@id='signup_request_password']|abcd           |.//*[@id='new_signup_request']/div[2]/div[1]/div[8]/span |must contain 1 letter, 1 number/symbol, and be at least 4 characters long   |
 |.//*[@id='signup_request_zipcode'] |               |.//*[@id='new_signup_request']/div[2]/div[2]/div[11]/span|Must be provided |
 
 
