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

ActiveRecord::Schema.define(version: 20151112224938) do

  create_table "orders", force: :cascade do |t|
    t.text     "content"
    t.text     "name"
    t.text     "location"
    t.text     "time"
    t.text     "restaurant"
    t.integer  "createdByID"
    t.integer  "acceptedByID", default: 0
    t.boolean  "isDone",       default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "stores", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.text "address"
    t.text "url"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
    t.string   "token"
    t.string   "email"
    t.string   "address"
    t.boolean  "isDriver",   default: false
    t.datetime "expires_at"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
