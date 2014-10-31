class Student < ActiveRecord::Base
has_one :student_profile
has_one :student_image
has_secure_password 
 validates_uniqueness_of :username

validates :password, length: { in: 6..20 }
validates_confirmation_of :password ,on:create

end
