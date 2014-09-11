class School < ActiveRecord::Base
#validates_confirmation_of :email
has_secure_password
validates :password,
    :length => { :minimum => 5 }
 
  validates_confirmation_of :password
def self.authenticate(email)
    user = School.find_by_email(email)
    user
  end

end
