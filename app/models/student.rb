class Student < ActiveRecord::Base
has_secure_password 
 validates_uniqueness_of :student_main_id

validates :password, length: { in: 6..20 }
validates_confirmation_of :password ,on:create

end
