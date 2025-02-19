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

ActiveRecord::Schema[8.0].define(version: 2025_02_19_131706) do
  create_table "offers", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.text "description"
    t.decimal "price"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "offers_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "offer_id"
    t.index ["offer_id"], name: "index_offers_users_on_offer_id"
    t.index ["user_id"], name: "index_offers_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "pseudonym"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "offers", "users"
end
