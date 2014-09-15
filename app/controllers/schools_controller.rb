class SchoolsController < ApplicationController
def homepage
 # session[:SCHOOL_NAME]="manoj"
end
#  start school signup ,validation ,and inter data in database
def school_signup
  @school=School.new
end

def reg
  
@school = School.new(user_params)
@school.activation_token=SecureRandom.urlsafe_base64
    
      if @school.save
 ConfirmEmail.send_confirm_email(@school).deliver
  #flash.now[:sussces]="susscefully create"
   
    else 
     respond_to do |format|
      format.html { render 'school_signup' }
        format.json { render json: @school.errors, status: :unprocessable_entity }
end
      end
end
#school_activation
def school_activation
  email=params[' e']
  token=params.first[0]
  data= School.find_by_email(email)
  datatoken=data.activation_token
  
  if datatoken==token
    data.update_attribute :is_Active, 1
 
  redirect_to '/schools/school_signin',sussces:"susscesfully varified please login"
 
  end
  
end
# end school signup

# start school sign in validation 

def school_signin
  @school=School.new
end

def school_login
  
    email = params[:user][:email]
    
     password = params[:user][:password]
   user = School.auth(email,password)
 
  if user
    active=School.find_by_email(email).is_Active 
  if active=='1'
   session[:user]=email
   session[:school_name]=School.find_by_email(email).SCHOOL_NAME

    redirect_to "/schools/school_home_page"

else

  redirect_to "/schools/school_signin",error:"you are not varified !!!!!!!!"
end
 else
  redirect_to "/schools/school_signin",error:"Email or Paasword are wrong!!!!!!!!"
 
  end
end
# end school signin
# start  school home page ,profile ....imaage uploading
def school_home_page
  if session[:user]!=nil
 @school=School.new
 @school=School.find_by email:session[:user]
  render layout: 'school_main'
  else 
     redirect_to "/schools/school_signin"
  end
end
# start profile part of school
def school_profile
 if session[:user]!=nil
  @school=School.new
 @school=School.find_by email:session[:user]
  render layout: 'school_main'
else
  redirect_to '/schools/homepage',error:"you are not log in"
end
end  

#upload image
  def school_image
  @school=School.new  
  end
def school_image_upload
 imagename = params[:image][:avatar]
  @school = School.find_by email:session[:user]
if @school.update(avatar: imagename)
redirect_to '/schools/school_home_page'
else
  respond_to do |format|
      format.html { render 'schools/school_image' }
        format.json { render json: @school.errors, status: :unprocessable_entity }
end
end

end
# end of school page
#school log out page
def logout
  session[:user]=nil
  redirect_to "/schools/homepage",sussces:"logout"
end
# taking sign up form data into params
def user_params
    params.require(:schooldata).permit(:SCHOOL_NAME,:board_code,:registered_Under,:school_type,:webSite,:email,:estb_year,:phone1,:city,:state,:password,:password_confirmation)
  end
end

