class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|
      t.string :name
      t.string :lastname
      t.string :mobile
      t.string :f_mobile
      t.string :email
      t.string :std
      t.string :sec
      t.integer :student_id
     t.integer :is_active ,:default=>0
      t.integer :is_profile,:default=>0
      t.integer :is_confirm,:default=>0

      t.timestamps
    end
  end
end
