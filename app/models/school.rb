class School < ActiveRecord::Base


has_attached_file :avatar
  # Validate content type
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']
  # Validate filename
 # validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
  # Explicitly do not validate
 # do_not_validate_attachment_file_type :avatar 
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
