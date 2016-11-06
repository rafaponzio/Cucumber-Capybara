require "capybara/cucumber"
require "selenium-webdriver"
require "rspec/expectations"

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30

