Bundler.require(:test)

require "aruba/cucumber"
require "capybara/cucumber"

require "./features/support/blueprint_app"

Capybara.app = BlueprintApp.new
Capybara.javascript_driver = :webkit

config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'baci.lindsaar.net',
  :user_name            => '<username>',
  :password             => '<password>',
  :authentication       => 'plain',
  :enable_starttls_auto => true  }