class CreateTeacherProfiles < ActiveRecord::Migration
  def change
    create_table :teacher_profiles do |t|
      t.string :title
      t.string :lastname
      t.string :grade
      t.string :subject
      t.string :image
      t.string :teacher_id

      t.timestamps
    end
  end
end
