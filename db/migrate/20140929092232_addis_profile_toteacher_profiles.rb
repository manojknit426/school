class AddisProfileToteacherProfiles < ActiveRecord::Migration
  def change
  add_column :teacher_profiles, :is_profile, :integer,:default =>0
  end
end
