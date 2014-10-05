class TeacherProfile < ActiveRecord::Base
belongs_to :teacher
has_one :teacher_image

end
