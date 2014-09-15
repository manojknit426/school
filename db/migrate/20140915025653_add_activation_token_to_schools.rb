class AddActivationTokenToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :activation_token, :string
  end
end
