When(/^I click on PLANS & PRICING link$/) do 
  find(:xpath,".//*[@id='menu']/div[2]/ul/li[4]/a").click
end

When(/^I click on "(.*?)" button of each meal plan$/) do |started_btn|
  find(:xpath,started_btn).click
end

When /^I wait (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
end

When(/^I click on the Next button$/) do
  click_button('Next')
end

When(/^page should have the text Card on file:$/) do
  page.has_content?('page should have the text Card on file:')
end

