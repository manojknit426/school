class School < ActiveRecord::Base
def self.authenticate_by_email(email, password)
    user = find_by_email(email)
    if user 
      
    else
      nil
    end
  end

end
