class UserMailer < ApplicationMailer

def comp_email(user)
    @user = user
    mail(to: @user.email, subject: 'Complaint Received')
  end
end
