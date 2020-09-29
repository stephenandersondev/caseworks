# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_28_235354) do

  create_table "cases", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "social_worker_id", null: false
    t.integer "resource_id", null: false
    t.string "focus"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_cases_on_client_id"
    t.index ["resource_id"], name: "index_cases_on_resource_id"
    t.index ["social_worker_id"], name: "index_cases_on_social_worker_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "image_url"
    t.string "location"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "age"
  end

  create_table "notes", force: :cascade do |t|
    t.string "content"
    t.integer "case_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_id"], name: "index_notes_on_case_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "email"
    t.string "categories"
    t.string "image_url"
    t.string "description"
    t.string "hours"
    t.string "web_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "social_workers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "image_url"
    t.string "location"
    t.string "email"
    t.string "specialty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cases", "clients"
  add_foreign_key "cases", "resources"
  add_foreign_key "cases", "social_workers"
  add_foreign_key "notes", "cases"
end
