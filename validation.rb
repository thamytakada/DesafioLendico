require 'capybara/dsl'
require 'pry'

include Capybara::DSL
Capybara.default_driver = :chrome
Capybara.register_driver :chrome do |app|
Capybara::Selenium::Driver.new(app, browser: :chrome)
end

visit 'https://frontend-authentication.lendico.net.br/'
binding.pry