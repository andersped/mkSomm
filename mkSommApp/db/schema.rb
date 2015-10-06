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

ActiveRecord::Schema.define(version: 20151004053238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "category_pairings", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "pairing_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "category_pairings", ["category_id"], name: "index_category_pairings_on_category_id", using: :btree
  add_index "category_pairings", ["pairing_id"], name: "index_category_pairings_on_pairing_id", using: :btree

  create_table "food_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.integer  "pairing_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "foods", ["pairing_id"], name: "index_foods_on_pairing_id", using: :btree

  create_table "pairings", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "perfects", force: :cascade do |t|
    t.integer  "food_group_id"
    t.integer  "pairing_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "perfects", ["food_group_id"], name: "index_perfects_on_food_group_id", using: :btree
  add_index "perfects", ["pairing_id"], name: "index_perfects_on_pairing_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "varietals", force: :cascade do |t|
    t.string   "visual"
    t.string   "aroma"
    t.string   "fruit"
    t.string   "floral"
    t.string   "herbal"
    t.string   "spice"
    t.string   "other"
    t.string   "earth"
    t.string   "oak"
    t.string   "structure"
    t.integer  "category_id"
    t.string   "food_group"
    t.string   "references"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "food_group_id"
    t.string   "name"
  end

  add_index "varietals", ["category_id"], name: "index_varietals_on_category_id", using: :btree
  add_index "varietals", ["food_group_id"], name: "index_varietals_on_food_group_id", using: :btree

  create_table "wine_and_food_pairings", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "food_group_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "wine_and_food_pairings", ["category_id"], name: "index_wine_and_food_pairings_on_category_id", using: :btree
  add_index "wine_and_food_pairings", ["food_group_id"], name: "index_wine_and_food_pairings_on_food_group_id", using: :btree

  create_table "wines", force: :cascade do |t|
    t.string   "name"
    t.string   "appellation"
    t.string   "region"
    t.string   "varietal"
    t.string   "winery"
    t.decimal  "price",       precision: 8, scale: 2
    t.integer  "rating"
    t.string   "type"
    t.string   "label"
    t.integer  "upvotes"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_id"
    t.integer  "vote"
  end

  add_index "wines", ["user_id"], name: "index_wines_on_user_id", using: :btree

  add_foreign_key "category_pairings", "categories"
  add_foreign_key "category_pairings", "pairings"
  add_foreign_key "foods", "pairings"
  add_foreign_key "perfects", "food_groups"
  add_foreign_key "perfects", "pairings"
  add_foreign_key "varietals", "categories"
  add_foreign_key "varietals", "food_groups"
  add_foreign_key "wine_and_food_pairings", "categories"
  add_foreign_key "wine_and_food_pairings", "food_groups"
  add_foreign_key "wines", "users"
end
