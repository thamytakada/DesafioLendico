require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'faker'
require 'ffaker'
require 'site_prism'
require 'pry'
require 'httparty'
require "httparty/request"
require "httparty/response/headers"


Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)  
end

Capybara.configure do |config|
    config.run_server = false
    Capybara.default_driver = :site_prism
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time= 10
    config.app_host = 'https://frontend-authentication.lendico.net.br'
end