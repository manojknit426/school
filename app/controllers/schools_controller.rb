class SchoolsController < ApplicationController
def homepage
  
end

def school_signup
  @school=School.new
end

def reg
  
@school = School.new(user_params)

    #respond_to do |format|
      if @school.save
  # redirect_to "/schools/school_signup"
      end
end
def schoolhomepage
  
end
def user_params
    params.require(:schooldata).permit(:SCHOOL_NAME,:board_code,:registered_Under,:school_type,:webSite,:email,:estb_year,:phone1,:city,:state)
  end
end
