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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130206130312) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "blood_groups", :force => true do |t|
    t.string   "blood_group_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "castes", :force => true do |t|
    t.string   "caste_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "city_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dependents", :force => true do |t|
    t.integer  "employee_id"
    t.string   "Dependent_name"
    t.integer  "relation_id"
    t.date     "Birthdate"
    t.integer  "status_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "designations", :force => true do |t|
    t.string   "Designation_Hindi"
    t.string   "Designation_English"
    t.string   "class_no"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "districts", :force => true do |t|
    t.string   "district_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "emp_adds", :force => true do |t|
    t.string   "emp_id"
    t.string   "emp_martial_status_id"
    t.string   "emp_present_addr"
    t.string   "emp_identification"
    t.string   "emp_pannum"
    t.string   "emp_dlnum"
    t.string   "emp_passportnum"
    t.string   "emp_alt_email"
    t.string   "emp_alt_phone"
    t.string   "emp_alt_mobile"
    t.string   "emp_present_loc_master_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "emp_edus", :force => true do |t|
    t.string   "emp_id"
    t.string   "emp_education"
    t.string   "emp_specialisation"
    t.text     "emp_remarks"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "emp_id"
    t.string   "emp_full_name"
    t.string   "emp_fname"
    t.string   "emp_mname"
    t.string   "emp_lname"
    t.string   "emp_fathername"
    t.integer  "gender_id"
    t.date     "emp_dob"
    t.integer  "category_id"
    t.integer  "religion_id"
    t.integer  "caste_id"
    t.integer  "blood_group_id"
    t.string   "emp_permanent_address"
    t.string   "emp_loc_master_id"
    t.string   "emp_phone_no"
    t.string   "emp_mobile_no"
    t.string   "emp_email"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "genders", :force => true do |t|
    t.string   "gender_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "institution_masters", :force => true do |t|
    t.integer  "pincode_id"
    t.string   "Institution_Name"
    t.integer  "Institution_type_id"
    t.integer  "Special_Cadre_id"
    t.integer  "district_id"
    t.integer  "Beds"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "institution_types", :force => true do |t|
    t.string   "Institution_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "leave_types", :force => true do |t|
    t.string   "leave_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leaves", :force => true do |t|
    t.integer  "employee_id"
    t.date     "date_from"
    t.date     "date_to"
    t.integer  "days"
    t.integer  "leave_type_id"
    t.text     "leave_reason"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "address"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "martial_stats", :force => true do |t|
    t.string   "martial_status_type"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "pincodes", :force => true do |t|
    t.integer  "pincode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "postings", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "institution_master_id"
    t.integer  "designation_id"
    t.date     "posting_from"
    t.date     "posting_to"
    t.string   "payscale"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "qualification_names", :force => true do |t|
    t.string   "Qualification_name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "qualification_types", :force => true do |t|
    t.string   "Qualification_type"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "qualifications", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "qualification_type_id"
    t.integer  "qualification_name_id"
    t.integer  "specialisation_id"
    t.integer  "year"
    t.integer  "university_id"
    t.text     "Remarks"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "relations", :force => true do |t|
    t.string   "Relation_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "religions", :force => true do |t|
    t.string   "religion_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "special_cadres", :force => true do |t|
    t.string   "Special_Cadre_Type"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "specialisations", :force => true do |t|
    t.string   "Specialisation_name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "state_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "Status_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "taluks", :force => true do |t|
    t.string   "taluk_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tempus", :force => true do |t|
    t.string   "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "universities", :force => true do |t|
    t.string   "University_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
