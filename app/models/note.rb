class Note < ActiveRecord::Base
belongs_to :teacher
has_many :comments
end
