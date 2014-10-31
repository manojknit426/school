class StudentsController < ApplicationController
def student_reg

@student = Student.new(student_params)
@student.activation_token=SecureRandom.urlsafe_base64
    
      if @student.save
 
 #ConfirmEmail.send_confirm_email(@school).deliver
  session[:username]=@student.username
 
  redirect_to '/students/student_new'
   else 
    
     respond_to do |format|
      format.html { redirect_to '/schools/homepage' ,error: @student.errors.to_a}
      

      end
end
end
def student_new
  @student =StudentProfile.new
end

def student_create
  @student = StudentProfile.new(student_profile_params)
@student.is_profile=1
@student.student_id=current_student.id
#@teacher.student_id=current_user.id
if @student.save
@active= Student.find_by_username(session[:username]).update_attribute :is_profile, 1
 redirect_to '/students/home' ,sussces: 'profile create'
else
  respond_to do |format|
      format.html { redirect_to '/students/student_new' ,error: @student.errors.to_a}
 end     

end
end
def student_image_upload
image= params[:studentimagedata][:image]
   
   @student= StudentImage.find_by_username(session[:username])
 if @student
  @student.update_attribute :image, image
 respond_to do |format|
      format.html { redirect_to '/students/student_new' }
      format.js
          end
 else
  
   @student=StudentImage.new :image => image,:username=>session[:username]
    @student.student_id=current_student.id
  if @student.save
  respond_to do |format|
      format.html { redirect_to '/students/student_new' }
      format.js
          end
end
end
end

def student_profile_params
  params.require(:studentdata).permit(:name,:lastname,:mobile,:std)
end
def student_params
   
    params.require(:user).permit(:username,:email,:password,:password_confirmation)
  end




end
