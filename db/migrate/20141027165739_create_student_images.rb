class CreateStudentImages < ActiveRecord::Migration
  def change
    create_table :student_images do |t|
      t.string :username
      t.string :image
      t.integer :student_id

      t.timestamps
    end
  end
end
