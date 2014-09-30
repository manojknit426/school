class QuizzesController < ApplicationController
  def create_quiz
 @quiz=Quiz.new
 @quiz=Quiz.where(email: session[:ts_email]).to_a
@teacher_img=TeacherImage.find_by email: session[:ts_email]
 render layout: 'teacher_home'
  end
def add_quiz
  @quiz=Quiz.new(quiz_params)
  @quiz.email=session[:ts_email]
  if @quiz.save
    respond_to do |format|
      format.html { redirect_to '/teachers/teacher_profile' }
      format.js
          end
  end
end
 def edit_quiz
   id=params['id']
 @quiz=Quiz.find_by_id(id)
 if @quiz
   respond_to do |format|
     format.js
   end
 end
 end
 def update_quiz
   @quiz = Quiz.find(params[:quizdata][:id])
   if @quiz.update(quiz_params_u)
     redirect_to '/quizzes/create_quiz'
   else
      redirect_to '/quizzes/create_quiz'
   end 
 end
 def quiz_params
   params.require(:quizdata).permit(:time_limit,:mark,:question,:a,:b,:c,:d,:answer)

 end 
 def quiz_params_u
   params.require(:quizdata).permit(:question,:a,:b,:c,:d,:answer)

 end 
end
