class StudentsController < ApplicationController
def student_reg

@student = Student.new(user_params)
@student.activation_token=SecureRandom.urlsafe_base64
    
      if @student.save
 
 #ConfirmEmail.send_confirm_email(@school).deliver
  session[:ss_id]=@student.student_main_id
 
  redirect_to '/students/student_profile'
   else 
    
     respond_to do |format|
      format.html { redirect_to '/schools/homepage' ,error: @student.errors.to_a}
      

      end
end
end
def student_profile
#  @student=StudentProfile.new
  render layout: 'profile'    
end
def student_profile_upload
  @student = StudentProfile.new(student_params)
@student.is_profile=1
@student.student_main_id=session[:ss_id]
if @student.save
@student= Student.find_by_student_main_id(session[:ss_id]).update_attribute :is_profile, 1
 redirect_to '/student/student_home' ,sussces: 'profile create'
else
  respond_to do |format|
      format.html { redirect_to '/student/student_profile' ,error: @student.errors.to_a}
 end     

end
end
def student_image_upload
image= params[:user][:image]
   s_id=session[:ss_id]
   @student= StudentImage.find_by_student_main_id(s_id)
 if @student
  @student.update_attribute :image, image
 respond_to do |format|
      format.html { redirect_to '/students/student_profile' }
      format.js
          end
 else
  
   @student=StudentImage.new :image => image,:student_main_id=> s_id
 
  if @student.save
  respond_to do |format|
      format.html { redirect_to '/students/student_home' }
      format.js
          end
end
end
end
 def student_home
   
 end

def user_params
   
    params.require(:user).permit(:student_main_id,:email,:password,:password_confirmation)
  end
def student_params
   
    params.require(:schooldata).permit(:name,:lastname,:mobile,:class,:schoolname)
  end
end
