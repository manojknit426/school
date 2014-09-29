class AddactivationTokenToTeachers < ActiveRecord::Migration
  def change
 add_column :teachers, :password_reset_token, :string
 add_column :teachers, :password_expires, :string
 add_column :teachers, :activation_token, :string
 add_column :teachers, :is_active, :integer
  end
end
