class CreateSchooldata < ActiveRecord::Migration
  def change
    create_table :schooldata do |t|
      t.string :Schoolcode
      t.string :schoolname
      t.string :branchname
      t.string :fromstd
      t.string :tostd
      t.string :boardcode
      t.string :registerunder
      t.string :schoolownershiptype
      t.string :yearofestb
      t.string :website
      t.string :email
      t.string :phone
      t.string :pictlink
      t.integer :isactive

      t.timestamps
    end
  end
end
