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
   # user = School.authenticate_by_email(email, password)
    redirect_to "/schools/homepage"
  end

def schoolhomepage
  
end
def user_params
    params.require(:schooldata).permit(:SCHOOL_NAME,:board_code,:registered_Under,:school_type,:webSite,:email,:estb_year,:phone1,:city,:state)
  end
end
