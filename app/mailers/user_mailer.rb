class UserMailer < ApplicationMailer
  default from: 'someone@gmail.com'
  def sample_mail(user)
    @user = user
    mail to: "abhiramani3@gmail.com", subject: "Demo mail"
  end
end
