# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_07_19_134213) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "backlog_items", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pointing_session_id"
    t.boolean "released"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "backlog_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["backlog_item_id"], name: "index_comments_on_backlog_item_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "pointing_sessions", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "focus"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "role_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "backlog_item_id", null: false
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "ui_points"
    t.float "api_points"
    t.float "processor_points"
    t.float "task_scheduler_points"
    t.float "data_points"
    t.float "research_points"
    t.float "external_data_points"
    t.float "manual_testing_points"
    t.boolean "airflow"
    t.boolean "performance_testing"
    t.boolean "audit_logging"
    t.boolean "squad_dependencies"
    t.boolean "cross_service_coordination"
    t.boolean "integration"
    t.boolean "level_of_uncertainty"
    t.boolean "technical_debt"
    t.index ["backlog_item_id"], name: "index_votes_on_backlog_item_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "comments", "backlog_items"
  add_foreign_key "comments", "users"
  add_foreign_key "users", "roles"
  add_foreign_key "votes", "backlog_items"
  add_foreign_key "votes", "users"
end
