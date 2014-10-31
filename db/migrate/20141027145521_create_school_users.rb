class CreateSchoolUsers < ActiveRecord::Migration
  def change
    create_table :school_users do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :school_id
      t.string :password_digest
      t.string :username
      t.string :role
      t.string :password_reset_token
      t.string :password_expires
      t.string :activation_token
      t.integer :is_active,:default=>0
      t.integer :is_peofile,:default=>0
      t.integer :is_confirm,:default=>0
      
      t.timestamps
    end
  end
end
