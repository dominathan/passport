PassportFitnessDC::Application.configure do
  config.action_mailer.smtp_settings = {
    :address => "smtp.mandrillapp.com",
    :port => 587, ## ports 587 and 2525 are also supported with STARTTLS
    :enable_starttls_auto => true, #detects and uses STARTTLS
    :user_name => ENV['MANDRILL_USERNAME'],
    :password => ENV['MANDRILL_PASSWORD'],
    :authentication => 'login', #'login' or 'plain'
    :domain => 'heroku.com' #domain to identify your server when connecting
  }
end

ActionMailer::Base.delivery_method = :smtp

MandrillMailer.configure do |config|
  config.api_key = ENV['MANDRILL_API']
end

