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

ActiveRecord::Schema.define(version: 2020_10_21_181441) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "picture_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "interest_id"
  end

  create_table "gifts", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "favoriteValue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.text "questions"
    t.string "favorite_gift"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "character_id", null: false
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_relationships_on_character_id"
    t.index ["user_id"], name: "index_relationships_on_user_id"
  end

  create_table "user_gifts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "gift_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gift_id"], name: "index_user_gifts_on_gift_id"
    t.index ["user_id"], name: "index_user_gifts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "picture_url"
    t.integer "points", default: 0
  end

  add_foreign_key "relationships", "characters"
  add_foreign_key "relationships", "users"
  add_foreign_key "user_gifts", "gifts"
  add_foreign_key "user_gifts", "users"
end
