class CreateStudentImages < ActiveRecord::Migration
  def change
    create_table :student_images do |t|
      t.string :student_main_id
      t.string :image
      t.string :student_id

      t.timestamps
    end
  end
end
