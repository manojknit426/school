class School < ActiveRecord::Base
#validates_confirmation_of :email
def self.authenticate(email)
    user = School.find_by_email(email)
    user
  end

end
