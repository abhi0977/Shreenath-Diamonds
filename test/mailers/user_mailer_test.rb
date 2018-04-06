require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "sample_mail" do
    mail = UserMailer.sample_mail
    assert_equal "Sample mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
