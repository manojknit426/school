class CreateQuizProfiles < ActiveRecord::Migration
  def change
    create_table :quiz_profiles do |t|
      t.string :quiz_name
      t.string :total_time
      t.string :email
      t.string :teacher_id
      t.integer :total_mark

      t.timestamps
    end
  end
end
