# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Us1::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name      => 'app27788021@heroku.com',
  :password       => '0ofoexey',
  :domain => "heroku.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}