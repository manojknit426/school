class NotesController < ApplicationController
  def create_note
  @notes=Note.new
  end

  def add_note
  @note=Note.new(note_params)
  @note.email=session[:ts_email]
  #@teacher_img=TeacherImage.where(email: session[:ts_email])
 
  if @note.save
   
    respond_to do |format|
      format.html { redirect_to '/teachers/teachers_home' }
      format.js
          end
  end
  end

  def delete_note
  id=params['id']
  school=Note.find_by_id(id).destroy
  redirect_to '/teachers/teacher_home'
  end

  def show_note
  end
def note_params
   params.require(:notedata).permit(:notes)
end
end
