class RemovemobileFromTeachers < ActiveRecord::Migration
  def change
 remove_column :teachers, :name
 remove_column :teachers, :mobile
 
  end
end
