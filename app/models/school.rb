class School < ActiveRecord::Base
#validates_confirmation_of :email
has_secure_password
validates :email,:password, presence: true
validates :email, uniqueness: true
validates :password, :length => { :minimum => 5 }
 
  validates_confirmation_of :password

def self.auth(email,password)
  user=School.find_by_email(email)
     if user&& user.authenticate(password) 
user
else false
end
end
end
