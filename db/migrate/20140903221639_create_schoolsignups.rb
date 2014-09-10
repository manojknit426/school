class CreateSchoolsignups < ActiveRecord::Migration
  def change
    create_table :schoolsignups do |t|

      t.timestamps
    end
  end
end
