class SchoolImage < ActiveRecord::Base
mount_uploader :image,ImageUploader
end
