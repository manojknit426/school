class TeachersController < ApplicationController

def teacher_reg

@teacher = Teacher.new(user_params)
#@teacher.activation_token=SecureRandom.urlsafe_base64
    
      if @teacher.save
 #ConfirmEmail.send_confirm_email(@school).deliver
   else 
    
     respond_to do |format|
      format.html { redirect_to '/signup' ,error: @teacher.errors.to_a}
      

      end
end
end
def teacher_profile
  @teacher=TeacherProfile.new
      
end
def teacher_profile_upload
image= params[:user][:image]
   @teacher=TeacherProfile.new :image => image
 
  if @teacher.save
  respond_to do |format|
      format.html { redirect_to '/signup' ,error: @teacher.errors.to_a}
      format.js
          end
end
end
def total_image
 @teacher=TeacherProfile.new
 @teacher=TeacherProfile.all
  
end
def delete_image
  id=params['id']
  school=TeacherProfile.destroy(id)
  redirect_to '/teachers/total_image'
end
def user_params
   
    params.require(:user).permit(:name,:email,:mobile,:password)
  end
def teacher_params
   
    params.require(:user).permit(:name,:email,:mobile,:password)
  end
end
