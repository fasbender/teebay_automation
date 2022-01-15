require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'pry'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'goog:chromeOptions' => {
        'args' => [ "--window-size=1280,720" ]
      }
    )
  )
end

Capybara.default_driver = :chrome
Capybara.ignore_hidden_elements = false