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

ActiveRecord::Schema.define(version: 20140224015412) do

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

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.text     "address"
    t.string   "email"
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

  create_table "tickets", force: true do |t|
    t.integer  "customer_id"
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

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
