class CreateTeacherImages < ActiveRecord::Migration
  def change
    create_table :teacher_images do |t|
      t.string :email
      t.string :image

      t.timestamps
    end
  end
end
