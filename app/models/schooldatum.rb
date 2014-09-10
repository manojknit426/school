class Schooldatum < ActiveRecord::Base

validates :schoolname, length: { maximum: 3 }

end 
