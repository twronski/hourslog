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

ActiveRecord::Schema.define(version: 2019_07_12_011604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bays", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hours_records", force: :cascade do |t|
    t.date "day"
    t.decimal "man_hour", precision: 4, scale: 2
    t.bigint "activity_id"
    t.bigint "project_id"
    t.bigint "user_id"
    t.bigint "bay_id"
    t.bigint "voltage_level_id"
    t.integer "status"
    t.text "description"
    t.integer "improductive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "improductive_reason_id"
    t.index ["activity_id"], name: "index_hours_records_on_activity_id"
    t.index ["bay_id"], name: "index_hours_records_on_bay_id"
    t.index ["improductive_reason_id"], name: "index_hours_records_on_improductive_reason_id"
    t.index ["project_id"], name: "index_hours_records_on_project_id"
    t.index ["user_id"], name: "index_hours_records_on_user_id"
    t.index ["voltage_level_id"], name: "index_hours_records_on_voltage_level_id"
  end

  create_table "improductive_reasons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "full_name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "wbs"
    t.string "name"
    t.text "description"
    t.integer "ct_id"
    t.integer "pm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ct_id"], name: "index_projects_on_ct_id"
    t.index ["pm_id"], name: "index_projects_on_pm_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "voltage_levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "hours_records", "activities"
  add_foreign_key "hours_records", "bays"
  add_foreign_key "hours_records", "improductive_reasons"
  add_foreign_key "hours_records", "projects"
  add_foreign_key "hours_records", "users"
  add_foreign_key "hours_records", "voltage_levels"
  add_foreign_key "profiles", "users"
  add_foreign_key "projects", "users", column: "ct_id"
  add_foreign_key "projects", "users", column: "pm_id"
end
