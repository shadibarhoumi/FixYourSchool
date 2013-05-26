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

ActiveRecord::Schema.define(:version => 20130526104536) do

  create_table "addresses", :force => true do |t|
    t.string   "city"
    t.text     "state"
    t.integer  "zipcode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "school_id"
  end

  create_table "petitions", :force => true do |t|
    t.integer  "school_id"
    t.integer  "user_id"
    t.text     "description"
    t.integer  "goal"
    t.string   "title"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "petitions", ["school_id"], :name => "index_petitions_on_school_id"
  add_index "petitions", ["user_id"], :name => "index_petitions_on_user_id"

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "signatures", :force => true do |t|
    t.integer  "petition_id"
    t.text     "reason"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "attends_school"
    t.integer  "likes"
  end

  add_index "signatures", ["petition_id"], :name => "index_signatures_on_petition_id"

  create_table "targets", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

end
