class PasswordsController < ApplicationController
   def forgot_password
  @school=School.new
   end
 
 def send_password
  email=params[:user][:email] 
 user=School.find_by_email(email)
 if user
   user.password_reset_token = SecureRandom.urlsafe_base64
    user.password_expires = 24.hours.from_now
    user.save
ConfirmEmail.send_forgot_password(user).deliver
    
    redirect_to '/passwords/forgot_password',sussces: 'Password instructions have been mailed to you. Please check your inbox.'
else 
  redirect_to '/passwords/forgot_password',error: "email id not exist"
 end

 end
 def reset_password
 
 token = params.first[0]
 @user = School.find_by_password_reset_token(token)

  if @user.nil?
   
    redirect_to "schools/homepage" ,error: 'You have not requested a password reset'
  
    end

end
 def new_password
  email = params[:user][:email]
  @user = School.find_by_email(email)

  if verify_new_password(user_params)
    @user.update(user_params)
    @user.password = @user.password

    if @user.valid?
      clear_password_reset(@user)
      @user.save
     
      redirect_to '/schools/school_signin', sussces: 'Your password has been reset. Please sign in with your new password.'
    else
      redirect_to  "/passwords/reset_password",error: "email not match"
    end
  else
    redirect_to '/passwords/reset_password',error: 'password not match'
  end
end

def user_params
    params.require(:user).permit(:password,:password_confirmation)
  end
private

def clear_password_reset(user)
  user.password_expires = nil
  user.password_reset_token = nil
end

def verify_new_password(passwords)
  result = true

  if passwords[:password].blank? || (passwords[:password] != passwords[:password_confirmation])
    result = false
  end

  result
end

end
