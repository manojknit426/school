class ConfirmEmail < ActionMailer::Base
  default from: "www.schoolGlobal.com"
def send_confirm_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our sG')
  end

end
