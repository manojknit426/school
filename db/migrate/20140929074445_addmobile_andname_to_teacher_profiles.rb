class AddmobileAndnameToTeacherProfiles < ActiveRecord::Migration
  def change
  add_column :teacher_profiles, :t_email, :string
  add_column :teacher_profiles, :t_name, :string
  add_column :teacher_profiles, :t_mobile, :integer,:limit=> 8
 remove_column :teacher_profiles, :image
 
  end
end
