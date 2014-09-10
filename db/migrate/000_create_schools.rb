class CreateSchools< ActiveRecord::Migration
  
 def change
    create_table "school_master", primary_key: "SCHOOL_ID", force: true do |t|
    t.string :SCHOOL_CODE          
    t.string :SCHOOL_NAME
    t.string :branch_name
    t.string  :from_std
    t.string  :to_std
    t.string   :medium_of_teaching
    t.integer  :total_Strength
    t.integer  :total_Teaching_Staff
    t.integer :total_Staff
    t.string  :board_Code        
    t.string   :registered_Under
    t.string   :school_Ownership_Type
    t.integer  :year_Of_Estb
    t.string   :webSite          
    t.string   :email             
    t.string   :wiki_Link            
    t.integer  :land_LineNo1
    t.integer  :land_LineNo2
    t.string   :picture_Link
    t.string   :visibility_Level
    t.datetime :created_On
    t.string   :creater_Info
    t.datetime :modified_On
    t.string   :modifier_Info
    t.string   :modification_Args
    t.string   :is_Active
    t.string   :city
    t.string   :state
  end

  end

end