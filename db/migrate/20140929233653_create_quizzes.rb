class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
     t.integer :q_id
      t.text :question
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :e
      t.string :f
      t.string :answer
      t.string :email
      t.string :time_limit
      t.string :total_time
      t.integer :mark
      t.integer :total_mark

      t.timestamps
    end
  end
end
