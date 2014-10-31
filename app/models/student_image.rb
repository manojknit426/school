class StudentImage < ActiveRecord::Base
belongs_to :student

mount_uploader :image,ImageUploader
end
