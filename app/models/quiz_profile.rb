class QuizProfile < ActiveRecord::Base
belongs_to :teacher
has_many :quizzes
end
