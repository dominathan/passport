require 'test_helper'

class PartnerNotifierTest < ActionMailer::TestCase
  test "partner_subscription_confirmation" do
    mail = PartnerNotifier.partner_subscription_confirmation
    assert_equal "Partner subscription confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
