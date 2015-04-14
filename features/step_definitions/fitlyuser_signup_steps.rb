newusername=''

Given(/^I am on the Fitly homepage$/) do
  visit('/')
end

When(/^I click on "(.*?)" link$/) do |arg1|
  find(:xpath,"//*[@id='menu']/div[2]/ul/li[5]/a").click
end

When(/^I fill in the form with test data$/) do
  fill_in('signup_request_first', :with => 'fitlyuser')
  fill_in('signup_request_last', :with => 'fitlyuserln')
  newusername = generate_username()
  fill_in 'signup_request_email', with: newusername+'@mailinator.com'
  fill_in('signup_request_password', :with => 'p@ssw0rd')
  fill_in('signup_request_password_confirmation', :with => 'p@ssw0rd')
  find("option[value='MDC']").click
  fill_in('signup_request_height_ft', :with => '5')
  fill_in('signup_request_height_inch', :with => '8')
  fill_in('signup_request_weight', :with => '190')
  page.execute_script("document.getElementById('male').checked = true")
  fill_in('signup_request_dob', :with => '04-16-1956')
  fill_in('signup_request_zipcode', :with => '19142')
  page.execute_script("document.getElementById('ex1_a').checked = true")
end

When(/^I click on the sign up button$/) do 
  click_button('Sign Up!')
end


Then(/^I should see the confirmation message$/) do
  page.has_content?('Congrats, you’re now signed up!')
end

Then(/^I close the confirmation message$/) do
  find(:xpath,"html/body/div[2]/a").click
end

Then(/^choose Logout and clear browser cookies$/) do
  find(:xpath,".//*[@id='menu']/div[2]/div[3]/a/div").click
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
end


Then(/^I go to my email inbox$/) do
 visit("http://www.mailinator.com")
 fill_in 'inboxfield', with: newusername+'@mailinator.com'
 find(:xpath,"html/body/div[2]/div/div[1]/div[2]/div/div[2]/div/div/btn").click
end

Then(/^I should see an email informing me that my account has been created$/) do
  find('subject ng-binding firefinder-match').click
end

def generate_username(length=6)
  chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ23456789'
  username = 'fitly'
  length.times { |i| username << chars[rand(chars.length)] }
  username
end




