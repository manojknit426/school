class SchoolImagesController < ApplicationController

def school_image
if session[:user]
 @school_image=SchoolImage.new 
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
end
end

end
