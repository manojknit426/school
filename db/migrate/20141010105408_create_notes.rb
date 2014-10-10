class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :teacher_id
      t.text :notes
      t.string :email
      t.datetime :submitdate

      t.timestamps
    end
  end
end
