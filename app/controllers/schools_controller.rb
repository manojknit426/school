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
     redirect_to '/schools/school_signin',sussces: 'you are susscesfully signup please check your email id for varification'
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

  redirect_to "/schools/school_signin",error:"you are not varified  check your email!!!!!!!!"
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
 @school_image=SchoolImage.new
 @school_image=SchoolImage.where(email: session[:user]).to_a
  
  render layout: 'school_main'
  else 
     redirect_to "/schools/school_signin",error: 'please login'
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



# end of school page
#school log out page
def logout
  session[:user]=nil
  redirect_to "/schools/homepage",sussces:"you are susscesfully  logout"
end
# taking sign up form data into params
def user_params
    params.require(:schooldata).permit(:SCHOOL_NAME,:board_code,:registered_Under,:school_type,:webSite,:email,:estb_year,:phone1,:city,:state,:password,:password_confirmation)
  end
def total_school
 @school=School.all 
end
def school_delete
id=params['id']
  school=School.find_by_SCHOOL_ID(id).destroy
  redirect_to '/schools/total_school'
end
end

