class AddQuizProfileToIdQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :quiz_profile_id, :integer
  end
end
