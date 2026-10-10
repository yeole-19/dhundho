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

ActiveRecord::Schema[8.1].define(version: 2026_10_10_102462) do
  create_table "comments", force: :cascade do |t|
    t.integer "item_id", null: false
    t.integer "person_id", null: false
    t.text "content"
    t.boolean "resolved", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_comments_on_item_id"
    t.index ["person_id"], name: "index_comments_on_person_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "category"
    t.string "status"
    t.string "found_at"
    t.string "contact"
    t.boolean "resolved", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.integer "person_id"
    t.index ["person_id"], name: "index_items_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "items"
  add_foreign_key "comments", "people"
  add_foreign_key "items", "people"
end
