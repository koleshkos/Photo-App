# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  port: 587,
  address: 'smtp.mailgun.org',
  user_name: ENV['MAILGUN_SMTP_LOGIN'],
  password: ENV['MAILGUN_SMTP_PASSWORD'],
  domain: 'heroku.com',
  authentication: :plain,
  enable_starttls_auto: true
}
ActionMailer::Base.delivery_method = :smtp
