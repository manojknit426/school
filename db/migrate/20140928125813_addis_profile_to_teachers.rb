class AddisProfileToTeachers < ActiveRecord::Migration
  def change
 add_column :teachers, :is_profile, :integer,:default =>'0'
  end
end
