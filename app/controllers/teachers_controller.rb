class TeachersController < ApplicationController

def teacher_reg

@teacher = Teacher.new(user_params)
@teacher.activation_token=SecureRandom.urlsafe_base64
    
      if @teacher.save
 
 #ConfirmEmail.send_confirm_email(@school).deliver
  session[:ts_email]=@teacher.email
 
  redirect_to '/teachers/teacher_profile'
   else 
    
     respond_to do |format|
      format.html { redirect_to '/schools/homepage' ,error: @teacher.errors.to_a}
      

      end
end
end


def teacher_login
  
    email = params[:user][:email]
    
     password = params[:user][:password]
   user = Teacher.auth(email,password)
 
  if user
    session[:ts_email]=email
    profile=Teacher.find_by_email(email).is_profile 
  if profile==0
   
  
   #session[:school_name]=School.find_by_email(email).SCHOOL_NAME

    redirect_to "/teachers/teacher_profile"

else

  redirect_to "/teachers/teacher_home"
end
 else
  redirect_to "/schools/school_signin",error:"Email or Paasword are wrong!!!!!!!!"
 
  end
end
def teacher_profile
  @teacher=TeacherProfile.new
  render layout: 'profile'    
end
def teacher_profile_upload
  @teacher = TeacherProfile.new(teacher_params)
@teacher.is_profile=1
@teacher.t_email=session[:ts_email]
if @teacher.save
@active= Teacher.find_by_email(session[:ts_email]).update_attribute :is_profile, 1
 redirect_to '/teachers/teacher_home' ,sussces: 'profile create'
else
  respond_to do |format|
      format.html { redirect_to '/teachers/teacher_profile' ,error: @teacher.errors.to_a}
 end     

end
end
def teacher_home
  @teacher=TeacherProfile.new
  @teacher=TeacherProfile.find_by t_email:session[:ts_email]
   @teacher_img=TeacherImage.find_by email:@teacher.t_email
  @quiz=QuizData.where(email: session[:ts_email])
 @note=Note.order("id DESC").where(email: session[:ts_email])
  render layout: 'teacher_home'
end

def teacher_image_upload
image= params[:user][:image]
   s_email=session[:ts_email]
   @teacher= TeacherImage.find_by_email(s_email)
 if @teacher
  @teacher.update_attribute :image, image
 respond_to do |format|
      format.html { redirect_to '/teachers/teacher_profile' }
      format.js
          end
 else
  
   @teacher=TeacherImage.new :image => image,:email=>s_email
 
  if @teacher.save
  respond_to do |format|
      format.html { redirect_to '/teachers/teacher_home' }
      format.js
          end
end
end
end
def total_image
 @teacher=TeacherImage.new
 @teacher=TeacherImage.all
  
end
def delete_image
  id=params['id']
  school=TeacherImage.destroy(id)
  redirect_to '/teachers/total_image'
end
def user_params
   
    params.require(:user).permit(:email,:password,:password_confirmation)
  end
def teacher_params
   
    params.require(:schooldata).permit(:t_name,:lastname,:t_mobile,:grade,:subject)
  end
end
