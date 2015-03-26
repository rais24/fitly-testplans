require 'capybara'

require 'capybara/cucumber'

require 'rspec/expectations'

#require 'ruby-debug'
 
Capybara.default_driver = :selenium
Capybara.app_host = "https://dd-fit.herokuapp.com/"
Capybara.default_wait_time = 20
 
World(Capybara)






