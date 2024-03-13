require 'capybara/cucumber'
require 'selenium/webdriver'
require 'rspec'
require 'rspec/expectations'

include RSpec::Matchers

ROOT_PATH = File.expand_path('../..',File.dirname(__FILE__))
EXPLICIT_WAIT_TIMEOUT = 5
IMPLICIT_WAIT_TIMEOUT = 10
WAIT_BETWEEN_STEPS = 1

Capybara.register_driver :webdriver do |app|
 options = Selenium::WebDriver::Chrome::Options.new
 options.add_argument('-width=1920')
 options.add_argument('-height=1080')

 Capybara::Selenium::Driver.new app, browser: :chrome, options: options
end


Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :webdriver
  config.default_max_wait_time = IMPLICIT_WAIT_TIMEOUT
end

#Maximize window.
Capybara.current_session.driver.browser.manage.window.resize_to(1920, 1080)
