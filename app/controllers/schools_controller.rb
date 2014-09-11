class SchoolsController < ApplicationController
def homepage
 # session[:SCHOOL_NAME]="manoj"
end

def school_signup
  @school=School.new
end

def reg
  
@school = School.new(user_params)

    
      if @school.save
 
  #flash.now[:sussces]="susscefully create"
   
    else 
     respond_to do |format|
      format.html { render 'school_signup' }
        format.json { render json: @school.errors, status: :unprocessable_entity }
end
      end
end
def school_signin
  @school=School.new
end

def school_login
  
    email = params[:user][:email]
    
     password = params[:user][:password]
   user = School.auth(email,password)
 
  if user
    
   session[:user]=email
    

    redirect_to "/schools/school_home_page"
 else
   redirect_to "/schools/school_signin",error:"Email or Paasword are wrong!!!!!!!!"
 
  end
end
def school_home_page
  if session[:user]!=nil
 @school=School.new
 @school=School.find_by email:session[:user]
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
    params.require(:schooldata).permit(:SCHOOL_NAME,:board_code,:registered_Under,:school_type,:webSite,:email,:estb_year,:phone1,:city,:state,:password,:password_confirmation)
  end
end
