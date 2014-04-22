class Notifier < ActionMailer::Base
  default from: "nathan@passportfitnessdc.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_confirmation.subject
  #
  def subscription_confirmation
    @greeting = "Hi"

    mail to: "Partner-name <nathan.mh@gmail.com>", subject: "Test"
  end
end
