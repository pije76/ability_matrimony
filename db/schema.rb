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

ActiveRecord::Schema.define(:version => 20130719204301) do

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "qualification"
    t.string   "religion"
    t.string   "marital_status"
    t.string   "occupation"
    t.integer  "income"
    t.string   "disability"
    t.string   "dother"
    t.string   "willing"
    t.string   "wother"
    t.binary   "photo"
    t.string   "own"
    t.string   "disabled"
    t.string   "divorce"
    t.string   "reasons"
    t.string   "father_name"
    t.integer  "father_age"
    t.string   "father_status"
    t.string   "mother_name"
    t.integer  "mother_age"
    t.integer  "mother_status"
    t.string   "parent_address"
    t.integer  "parent_phone"
    t.string   "dob"
    t.integer  "age"
    t.string   "subcaste"
    t.string   "passport_date"
    t.string   "passport_place"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",                  :default => false
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
