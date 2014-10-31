class AddTeacherIdToTeacherImage < ActiveRecord::Migration
  def change
    add_column :teacher_images, :teacher_id, :integer
  end
end
