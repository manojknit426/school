class Teacher < ActiveRecord::Base
has_one :teacher_profile
has_secure_password 
  validates_uniqueness_of :email

validates :password, length: { in: 6..20 }
validates_confirmation_of :password ,on:create

def self.auth(email,password)
  user=Teacher.find_by_email(email)
     if user&& user.authenticate(password) 
user
else false
end
end

end
