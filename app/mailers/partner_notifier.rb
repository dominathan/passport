class PartnerNotifier < ActionMailer::Base
  default from: "nathan@passportfitnessdc.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.partner_notifier.partner_subscription_confirmation.subject
  #
  def partner_subscription_confirmation(potential_partner)
    attachments.inline['passportfitnessdc.png'] = File.read('/Users/nathanhall/Desktop/PassportFitness/PassportFitnessDC/public/images/passportfitnessdc.png')
    @potential_partner = potential_partner
    mail to: "#{potential_partner.studio_name} <#{potential_partner.email}>", subject: "Thank you for your interest in Passport Fitness D.C."
  end
end
