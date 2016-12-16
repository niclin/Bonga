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

ActiveRecord::Schema.define(version: 20161214141935) do

  create_table "leave_events", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "total_days"
    t.text     "reason_for_leave"
    t.integer  "user_id"
    t.integer  "manager_id"
    t.string   "status"
    t.text     "reason_for_rejection"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer  "level"
    t.string   "level_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "confirm_password"
    t.integer  "manager_id"
    t.date     "joining_date"
    t.date     "end_date"
    t.integer  "salary"
    t.integer  "remaining_leaves"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
