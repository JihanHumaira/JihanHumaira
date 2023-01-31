require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'cucumber'
require 'pry'
require 'rspec'
require 'site_prism'
require 'site_prism/all_there' 


Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app, browser: chrome, timeout: 30)
  end
  
  Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 30
  end