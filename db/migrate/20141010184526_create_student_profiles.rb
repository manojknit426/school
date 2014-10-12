class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|
      t.string :name
      t.string :lastname
      t.integer :mobile ,:limit=>8
      t.integer :f_mobile ,:limit=>8
      t.string :class
      t.string :schoolname
      t.string :student_id
      t.integer :is_profile, :default=>0

      t.timestamps
    end
  end
end
