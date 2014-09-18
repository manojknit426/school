class SchoolImage < ActiveRecord::Base
#validates :image, presence: true,on: create
mount_uploader :image,ImageUploader
end
