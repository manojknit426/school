class CreateQuizAnswers < ActiveRecord::Migration
  def change
    create_table :quiz_answers do |t|
      t.string :quiz_id
      t.string :email
      t.string :student_id
      t.string :techer_id
      t.string :question_id
      t.string :answer
      t.string :student_email
      t.string :time

      t.timestamps
    end
  end
end
