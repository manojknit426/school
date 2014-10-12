# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141010191320) do

  create_table "address_master", primary_key: "address_id", force: true do |t|
    t.string   "reference_Id"
    t.string   "address_line1"
    t.string   "street"
    t.string   "pin_Code"
    t.string   "land_mark"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "level_Of_Activity"
    t.string   "visibility_Level",  limit: 20
    t.datetime "created_On"
    t.string   "created_by",        limit: 30
    t.datetime "modified_On"
    t.string   "modified_by",       limit: 50
    t.string   "is_Active",         limit: 1
  end

  create_table "board_master", primary_key: "board_code", force: true do |t|
    t.string  "board_name"
    t.string  "boad_Desc"
    t.string  "wiki_link"
    t.integer "year_of_estb"
    t.string  "is_Active",    limit: 1
  end

  create_table "checks", id: false, force: true do |t|
    t.string  "cc", null: false
    t.integer "dd", null: false
  end

  create_table "notes", force: true do |t|
    t.string   "teacher_id"
    t.text     "notes"
    t.string   "email"
    t.datetime "submitdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quiz_answers", force: true do |t|
    t.string   "quiz_id"
    t.string   "email"
    t.string   "student_id"
    t.string   "techer_id"
    t.string   "question_id"
    t.string   "answer"
    t.string   "student_email"
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quiz_data", force: true do |t|
    t.integer  "quiz_id"
    t.string   "quiz_name"
    t.string   "total_time"
    t.string   "email"
    t.integer  "teacher_id"
    t.string   "total_mark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", force: true do |t|
    t.text     "question"
    t.string   "a"
    t.string   "b"
    t.string   "c"
    t.string   "d"
    t.string   "e"
    t.string   "f"
    t.string   "answer"
    t.string   "email"
    t.string   "time_limit"
    t.string   "total_time"
    t.integer  "mark"
    t.integer  "total_mark"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quiz_data_id"
  end

  create_table "result_master", id: false, force: true do |t|
    t.string   "school_id",        limit: 20, null: false
    t.string   "std",              limit: 20, null: false
    t.string   "result_year",      limit: 4,  null: false
    t.float    "per40_59",         limit: 53
    t.float    "per60_79",         limit: 53
    t.float    "per80_89",         limit: 53
    t.float    "per90plus",        limit: 53
    t.float    "total_Percentage", limit: 53
    t.integer  "total_Strength"
    t.string   "visibility_Level", limit: 20
    t.datetime "created_On"
    t.string   "created_by",       limit: 30
    t.datetime "modified_On"
    t.string   "modified_by",      limit: 50
    t.string   "is_Active",        limit: 1
  end

  create_table "school_images", force: true do |t|
    t.integer  "school_SCHOOL_ID"
    t.string   "image"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "school_master", primary_key: "SCHOOL_ID", force: true do |t|
    t.string   "SCHOOL_CODE",           limit: 25
    t.string   "SCHOOL_NAME",           limit: 30
    t.string   "branch_name",           limit: 30
    t.string   "from_std",              limit: 5
    t.string   "to_std",                limit: 5
    t.string   "medium_of_teaching",    limit: 20
    t.integer  "total_Strength"
    t.integer  "total_Teaching_Staff"
    t.integer  "total_Staff"
    t.string   "board_Code",            limit: 20
    t.string   "registered_Under",      limit: 30
    t.string   "school_Ownership_Type", limit: 30
    t.integer  "year_Of_Estb"
    t.string   "webSite",               limit: 50
    t.string   "email",                 limit: 30
    t.string   "wiki_Link",             limit: 100
    t.integer  "land_LineNo1",          limit: 8
    t.integer  "land_LineNo2",          limit: 8
    t.string   "picture_Link",          limit: 50
    t.string   "visibility_Level",      limit: 20
    t.datetime "created_On"
    t.string   "creater_Info",          limit: 50
    t.datetime "modified_On"
    t.string   "modifier_Info",         limit: 50
    t.string   "modification_Args",     limit: 100
    t.string   "is_Active",             limit: 1
    t.string   "city",                  limit: 20
    t.string   "state",                 limit: 30
  end

  create_table "schooldata", force: true do |t|
    t.text     "test",                null: false
    t.string   "Schoolcode"
    t.string   "schoolname"
    t.string   "branchname"
    t.string   "fromstd"
    t.string   "tostd"
    t.string   "boardcode"
    t.string   "registerunder"
    t.string   "schoolownershiptype"
    t.string   "yearofestb"
    t.string   "website"
    t.string   "email"
    t.string   "phone"
    t.string   "pictlink"
    t.integer  "isactive"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", primary_key: "SCHOOL_ID", force: true do |t|
    t.string   "SCHOOL_CODE",          limit: 25
    t.string   "SCHOOL_NAME",          limit: 30
    t.string   "branch_name",          limit: 30
    t.string   "from_std",             limit: 5
    t.string   "to_std",               limit: 5
    t.string   "medium_of_teaching",   limit: 20
    t.integer  "total_Strength"
    t.integer  "total_Teaching_Staff"
    t.integer  "total_Staff"
    t.string   "board_code",           limit: 55
    t.string   "registered_Under",     limit: 30
    t.string   "school_type",          limit: 30
    t.integer  "estb_year"
    t.string   "webSite",              limit: 50
    t.string   "email",                limit: 30
    t.string   "wiki_Link",            limit: 100
    t.integer  "phone1",               limit: 8
    t.integer  "land_LineNo2",         limit: 8
    t.string   "picture_Link",         limit: 50
    t.string   "visibility_Level",     limit: 20
    t.datetime "created_On"
    t.string   "creater_Info",         limit: 50
    t.datetime "modified_On"
    t.string   "modifier_Info",        limit: 50
    t.string   "modification_Args",    limit: 100
    t.string   "is_Active",                        default: "0", null: false
    t.string   "city",                 limit: 20
    t.string   "state",                limit: 30
    t.string   "password_digest"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "activation_token"
    t.string   "password_reset_token"
    t.string   "password_expires"
  end

  create_table "schoolsignups", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_images", force: true do |t|
    t.string   "student_main_id"
    t.string   "image"
    t.string   "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_profiles", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "mobile",     limit: 8
    t.integer  "f_mobile",   limit: 8
    t.string   "class"
    t.string   "schoolname"
    t.string   "student_id"
    t.integer  "is_profile",           default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "student_main_id"
    t.string   "email"
    t.string   "password_digest"
    t.string   "password_reset_token"
    t.string   "activation_token"
    t.integer  "is_active",            default: 0
    t.integer  "is_profile",           default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teacher_images", force: true do |t|
    t.string   "email"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teacher_profiles", force: true do |t|
    t.string   "title"
    t.string   "lastname"
    t.string   "grade"
    t.string   "subject"
    t.string   "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "t_email"
    t.string   "t_name"
    t.integer  "t_mobile",   limit: 8
    t.integer  "is_profile",           default: 0
  end

  create_table "teachers", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_reset_token"
    t.string   "password_expires"
    t.string   "activation_token"
    t.integer  "is_active"
    t.integer  "is_profile",           default: 0
  end

  create_table "user_master", primary_key: "user_id", force: true do |t|
    t.string   "user_name",        limit: 30
    t.string   "f_name",           limit: 20
    t.string   "m_name",           limit: 20
    t.string   "l_name",           limit: 30
    t.string   "role",             limit: 20
    t.string   "email_id",         limit: 30
    t.string   "phone_no",         limit: 15
    t.string   "visibility_Level", limit: 20
    t.datetime "created_On"
    t.string   "created_by",       limit: 30
    t.datetime "modified_On"
    t.string   "modified_by",      limit: 50
    t.string   "is_Active",        limit: 1
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last"
  end

end
