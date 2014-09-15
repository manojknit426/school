class ChangeColumn < ActiveRecord::Migration
  def change
change_column :schools, :is_Active, :string ,:default => '0',:null=>false,:limit=>1
  end
end
