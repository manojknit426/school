class AddPasswordResetTokenAndPasswordExpiresToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :password_reset_token, :string
    add_column :schools, :password_expires, :string
  end
end
