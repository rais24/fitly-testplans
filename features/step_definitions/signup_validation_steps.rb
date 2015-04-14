When(/^I input "(.*?)" in "(.*?)"$/) do |invalid_value, field|
  find(:xpath,field).set invalid_value
  find(:xpath,field).native.send_keys(:tab)
end

When(/^I click on "(.*?)"$/) do |arg1|
  click_button('Sign Up!')
end

Then(/^I should see "(.*?)" in label "(.*?)"$/) do |error_msg, labelError|
  msg = find(:xpath,labelError).text()
  msg.should == error_msg
end
