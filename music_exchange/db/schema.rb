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

ActiveRecord::Schema.define(:version => 20120429194207) do

  create_table "cds", :force => true do |t|
    t.string   "album_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "artist"
    t.integer  "event_id"
  end

  create_table "events", :force => true do |t|
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "event_name"
  end

  create_table "invitations", :force => true do |t|
    t.string   "event_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "event_id"
    t.integer  "user_id"
  end

  create_table "rankings", :force => true do |t|
    t.integer  "cd_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "suggestions", :force => true do |t|
    t.integer "event_id"
    t.integer "cd_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "surname"
    t.string   "password_digest"
    t.string   "email"
    t.string   "about"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.boolean  "role",            :default => false
  end

end
