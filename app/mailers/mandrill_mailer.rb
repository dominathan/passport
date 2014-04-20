class UserMailer < ActionMailer::Base
  #default from: "no-reply@passportfitnesdc.com"

  def email_name #replace with def send_youve_signed_up_email(user)
    mail :subject => "TestEmail",
         :to      => "jamiecavanaugh1@gmail.com",
         :from    => "nathan.mh@gmail.com"
  end
end
