require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

World(PageObject)

#continua cenario end_to_end
#require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec/matchers'
#world(Capybara::DSL)
#world(Capybara::RSpecMatchers)

Capybara.configure do |config|
   config.default_driver = :selenium_chrome
   config.app_host = 'http://www.advantageonlineshopping.com'
   config.default_max_wait_time = 5
end
