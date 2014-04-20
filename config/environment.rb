# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#using mandrill
#   ActionMailer::Base.smtp_settings = {
#     :address => "smtp.mandrillapp.com",
#     :port => 587, ## ports 587 and 2525 are also supported with STARTTLS
#     #:enable_starttls_auto => true, #detects and uses STARTTLS
#     :user_name => ENV['MANDRILL_USERNAME'],
#     :password => ENV['MANDRILL_PASSWORD'],
#     :authentication => 'login', #'login' or 'plain'
#     :domain => 'heroku.com' #domain to identify your server when connecting
#   }

# ActionMailer::Base.delivery_method = :smtp
# end

#config.mandrill_mailer.default_url_options = {:host => 'localhost' }
