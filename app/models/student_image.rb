class StudentImage < ActiveRecord::Base
mount_uploader :image,StudentImageUploader
end
