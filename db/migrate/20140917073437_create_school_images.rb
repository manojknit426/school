class CreateSchoolImages < ActiveRecord::Migration
  def change
    create_table :school_images do |t|
      t.integer :school_SCHOOL_ID
      t.string :image
      t.string :email

      t.timestamps
    end
  end
end
