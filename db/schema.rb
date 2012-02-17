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

ActiveRecord::Schema.define(:version => 20120217095636) do

  create_table "hr_masters", :force => true do |t|
    t.integer  "hr_tables_column_id"
    t.string   "value"
    t.integer  "employee_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "hr_masters", ["hr_tables_column_id"], :name => "index_hr_masters_on_hr_tables_column_id"

  create_table "hr_tables", :force => true do |t|
    t.string   "table_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hr_tables_columns", :force => true do |t|
    t.integer  "hr_table_id"
    t.string   "column_name"
    t.string   "data_type"
    t.boolean  "required"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "hr_tables_columns", ["hr_table_id"], :name => "index_hr_tables_columns_on_hr_table_id"

  add_foreign_key "hr_masters", "hr_tables_columns", :name => "hr_masters_hr_tables_column_id_fk"

  add_foreign_key "hr_tables_columns", "hr_tables", :name => "hr_tables_columns_hr_table_id_fk"

end
