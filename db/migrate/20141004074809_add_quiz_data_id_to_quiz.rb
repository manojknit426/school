class AddQuizDataIdToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :quiz_data_id, :integer
  end
end
