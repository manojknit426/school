
class AddSendToToNote < ActiveRecord::Migration
  def change

 add_column :notes, :send_to,:integer
  end
end
