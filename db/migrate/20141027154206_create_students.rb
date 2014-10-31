class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :password_reset_token
      t.string :password_expires
      t.string :activation_token
      t.integer :is_active ,:default=>0
      t.integer :is_profile,:default=>0
      t.integer :is_confirm,:default=>0

      t.timestamps
    end
  end
end
