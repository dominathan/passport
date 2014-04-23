class Notifier < ActionMailer::Base
  default from: "nathan@passportfitnessdc.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_confirmation.subject
  #
  def subscription_confirmation(potential_member)
    @potential_member = potential_member

    mail to: "#{potential_member.first_name} <#{potential_member.email}>", subject: "Welcome to Passport Fitness D.C."
  end
end
