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

ActiveRecord::Schema.define(version: 2019_09_17_014150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_template_profiles", force: :cascade do |t|
    t.bigint "access_template_id"
    t.bigint "profile_id"
    t.integer "status"
    t.date "expiration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_template_id"], name: "index_access_template_profiles_on_access_template_id"
    t.index ["profile_id"], name: "index_access_template_profiles_on_profile_id"
  end

  create_table "access_templates", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "mandatory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.string "commentable_type"
    t.bigint "commentable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doc_templates", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.float "quality_ev"
    t.float "time_ev"
    t.float "organization_ev"
    t.integer "status"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_evaluations_on_profile_id"
  end

  create_table "evaluations_hours_records", id: false, force: :cascade do |t|
    t.bigint "hours_record_id", null: false
    t.bigint "evaluation_id", null: false
    t.index ["evaluation_id", "hours_record_id"], name: "index_ev_hr"
    t.index ["hours_record_id", "evaluation_id"], name: "index_hr_ev"
  end

  create_table "hours_records", force: :cascade do |t|
    t.date "day"
    t.decimal "man_hour", precision: 4, scale: 2
    t.bigint "activity_id"
    t.bigint "project_id"
    t.bigint "profile_id"
    t.bigint "bay_id"
    t.bigint "voltage_level_id"
    t.integer "status", default: 0
    t.text "description"
    t.boolean "improductive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "improductive_reason_id"
    t.integer "number_of_revisions", default: 0
    t.date "action_deadline"
    t.bigint "main_skill_id"
    t.bigint "main_equipment_id"
    t.index ["activity_id"], name: "index_hours_records_on_activity_id"
    t.index ["bay_id"], name: "index_hours_records_on_bay_id"
    t.index ["improductive_reason_id"], name: "index_hours_records_on_improductive_reason_id"
    t.index ["main_equipment_id"], name: "index_hours_records_on_main_equipment_id"
    t.index ["main_skill_id"], name: "index_hours_records_on_main_skill_id"
    t.index ["profile_id"], name: "index_hours_records_on_profile_id"
    t.index ["project_id"], name: "index_hours_records_on_project_id"
    t.index ["voltage_level_id"], name: "index_hours_records_on_voltage_level_id"
  end

  create_table "improductive_reasons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "improvement_actions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_improvement_actions_on_profile_id"
  end

  create_table "main_equipments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_sub_skills", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "sub_skill_id"
    t.integer "level"
    t.integer "status"
    t.date "expiration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_profile_sub_skills_on_profile_id"
    t.index ["sub_skill_id"], name: "index_profile_sub_skills_on_sub_skill_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "full_name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.bigint "main_skill_id"
    t.text "bio"
    t.float "evaluation_score", default: 0.0
    t.float "document_score", default: 0.0
    t.float "hours_submission_score", default: 0.0
    t.float "improvement_score", default: 0.0
    t.float "total_score", default: 0.0
    t.bigint "company_id"
    t.index ["company_id"], name: "index_profiles_on_company_id"
    t.index ["main_skill_id"], name: "index_profiles_on_main_skill_id"
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

  create_table "sub_skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suggestion_boxes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_suggestion_boxes_on_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.bigint "invited_by_id"
    t.integer "invitations_count", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "voltage_levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "choice"
    t.string "votable_type"
    t.bigint "votable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
  end

  add_foreign_key "access_template_profiles", "access_templates"
  add_foreign_key "access_template_profiles", "profiles"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "evaluations", "profiles"
  add_foreign_key "hours_records", "activities"
  add_foreign_key "hours_records", "bays"
  add_foreign_key "hours_records", "improductive_reasons"
  add_foreign_key "hours_records", "main_equipments"
  add_foreign_key "hours_records", "main_skills"
  add_foreign_key "hours_records", "profiles"
  add_foreign_key "hours_records", "projects"
  add_foreign_key "hours_records", "voltage_levels"
  add_foreign_key "improvement_actions", "profiles"
  add_foreign_key "profile_sub_skills", "profiles"
  add_foreign_key "profile_sub_skills", "sub_skills"
  add_foreign_key "profiles", "companies"
  add_foreign_key "profiles", "main_skills"
  add_foreign_key "profiles", "users"
  add_foreign_key "projects", "profiles", column: "ct_id"
  add_foreign_key "projects", "profiles", column: "pm_id"
  add_foreign_key "suggestion_boxes", "profiles"
end
