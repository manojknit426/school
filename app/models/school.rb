class School < ActiveRecord::Base


 
  has_secure_password 
validates :email,:password, presence: true ,on: create
validates :email, uniqueness: true,on: create
validates :password, :length => { :minimum => 5 } ,on:create
 
  validates_confirmation_of :password ,on:create

def self.auth(email,password)
  user=School.find_by_email(email)
     if user&& user.authenticate(password) 
user
else false
end
end
end
