class SchoolsController < ApplicationController
def homepage
 # session[:SCHOOL_NAME]="manoj"
end

def school_signup
  @school=School.new
end

def reg
  
@school = School.new(user_params)

    #respond_to do |format|
      if @school.save
 
 # flash.now[:error]="susscefully create"
  # redirect_to "/schools/school_signup"
      end
end
def school_signin
  @school=School.new
end
def school_login
  
    email = params[:user][:email]
    
     password = params[:user][:password]
   user = School.authenticate(email)
  if user
    
   session[:user]=email
    

    redirect_to "/schools/school_home_page"
 else
   redirect_to "/schools/school_signin"
  end
end
def school_home_page
  if session[:user]!=nil
 @school=School.new
 @school=School.first
  render layout: 'school_main'
  else 
     redirect_to "/schools/school_signin"
  end
end
def logout
  session[:user]=nil
  redirect_to "/schools/homepage"
end
def user_params
    params.require(:schooldata).permit(:SCHOOL_NAME,:board_code,:registered_Under,:school_type,:webSite,:email,:estb_year,:phone1,:city,:state,:password,:confirm_password)
  end
end
