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

ActiveRecord::Schema.define(version: 20140312153039) do

  create_table "assistants", force: true do |t|
    t.integer  "bus_id"
    t.string   "name"
    t.date     "birth_date"
    t.float    "salary"
    t.string   "gender"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bus_drivers", force: true do |t|
    t.integer  "bus_id"
    t.string   "name"
    t.date     "birth_date"
    t.float    "salary"
    t.string   "gender"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buses", force: true do |t|
    t.string   "trademark"
    t.string   "model"
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buses_schedules", force: true do |t|
    t.integer "bus_id"
    t.integer "schedule_id"
  end

  add_index "buses_schedules", ["bus_id", "schedule_id"], name: "bus_schedules", unique: true, using: :btree

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "package_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.integer  "departure_city_id"
    t.integer  "arrival_city_id"
    t.time     "departure_time"
    t.string   "days"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["departure_city_id", "arrival_city_id", "departure_time"], name: "schedules_unique", unique: true, using: :btree

  create_table "tickets", force: true do |t|
    t.integer  "user_id"
    t.integer  "travel_package_id"
    t.date     "departure_date"
    t.date     "arrival_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travel_packages", force: true do |t|
    t.integer  "package_type_id"
    t.integer  "schedule_id"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "travel_packages", ["package_type_id", "schedule_id"], name: "package_schedule", unique: true, using: :btree

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
    t.string   "name"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
