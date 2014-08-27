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

ActiveRecord::Schema.define(version: 20140827200925) do

  create_table "blogposts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contents", force: true do |t|
    t.text     "section1"
    t.text     "section2"
    t.text     "section3"
    t.text     "section4"
    t.text     "section5"
    t.text     "section6"
    t.text     "section7"
    t.text     "section8"
    t.text     "section9"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "section10"
    t.text     "section11"
    t.text     "section12"
    t.text     "section13"
    t.text     "section14"
    t.text     "section15"
    t.text     "section16"
    t.text     "section17"
    t.text     "section18"
    t.text     "section19"
    t.text     "section20"
  end

  create_table "subscriptions", force: true do |t|
    t.boolean  "subscribed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
