require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'bundler'
require 'date'
require 'yaml'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

#require 'dbi'
#require 'tiny_tds'
#require 'execjs'
#require 'pry'

#continua cenario end_to_end
#require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec/matchers'
#world(Capybara::DSL)
#world(Capybara::RSpecMatchers)

World(PageObject)
World(Helper)

DADOS = YAML.load(File.open(File.join(File.dirname(__FILE__) + "/massadedados/tb.yml")))


AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__)+ "/environment/#{AMBIENTE}.yml")

BROWSER = ENV['BROWSER']
Capybara.register_driver :selenium do |app|
if BROWSER.eql?('chrome')
Capybara::Selenium::Driver.new(app, :browser => :chrome)
elsif BROWSER.eql?('chrome_headless') 
   Capybara::Selenium::Driver.new(app, :browser => :chrome,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
     'chromeOptions' => {'args' =>['--headless', 'disable-gpu']}
    ) 
   )

elsif BROWSER.eql?('firefox') 
Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
elsif BROWSER.eql?('firefox_headless')
browser_options = Selenium::WebDriver::Firefox::Options.new(args: ['--headless'])
Capybara::Selenium::Driver.new(app, :browser => :firefox, options: browser_options)

#elsif BROWSER.eql?('ie')
#Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
#elsif BROWSER.eql?('safari')
#Capybara::Selenium::Driver.new(app, :browser => :safari)
#elsif BROWSER.eql?('poltergeist')
#options = {js_errors: false}
#Capybara::Poltergeist::Driver.new(app, options)
end
end

Capybara.configure do |config|
   #config.default_driver = :selenium_chrome
   config.default_driver = :selenium
   config.app_host = CONFIG['url_padrao']
   config.default_max_wait_time = 5
   Capybara.page.driver.browser.manage.window.maximize
end
