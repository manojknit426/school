class SchoolImagesController < ApplicationController

def school_image
if session[:user]
 @school_image=SchoolImage.new 
render layout: 'school_main'
else
redirect_to '/schools/school_signin', error: 'you are not login '
end
end
def school_image_upload
 
 image = params[:data][:image]
  email = session[:user] 
  @school_image=SchoolImage.new :image => image, :email => email
if @school_image.save
  
  redirect_to '/schools/school_home_page'
else
 respond_to do |format|
      format.html { render '/school_images/school_image' }
        format.json { render json: @school_image.errors, status: :unprocessable_entity }

end
end

end
def total_image
 @school_image=SchoolImage.new
 @school_image=SchoolImage.where(email: session[:user]).to_a
  
end
def delete_image
  id=params['id']
  school=SchoolImage.find_by_id(id).destroy
  redirect_to '/school_images/total_image'
end
end
