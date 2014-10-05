class CreateQuizData < ActiveRecord::Migration
  def change
    create_table :quiz_data do |t|
      t.integer :quiz_id
      t.string :quiz_name
      t.string :total_time
      t.string :email
      t.integer :teacher_id
      t.string :total_mark

      t.timestamps
    end
  end
end
