class TeacherImage < ActiveRecord::Base
belongs_to :teacher_profile
mount_uploader :image,ImageUploader
end
