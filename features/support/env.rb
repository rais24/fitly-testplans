require 'capybara'

require 'capybara/cucumber'

require 'rspec/expectations'

#require 'ruby-debug'
 
Capybara.default_driver = :selenium
Capybara.app_host = "http://54.187.24.138:3000"
Capybara.default_wait_time = 20


Before do |scenario|
    page.driver.browser.manage.window.maximize
end
 
World(Capybara)






