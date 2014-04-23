# Preview all emails at http://localhost:3000/rails/mailers/notifier
class NotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifier/subscription_confirmation
  def subscription_confirmation
    Notifier.subscription_confirmation
  end

end
