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

ActiveRecord::Schema.define(version: 20150927222749) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.integer  "pairing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "foods", ["pairing_id"], name: "index_foods_on_pairing_id"

  create_table "pairings", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
  end

  add_index "varietals", ["category_id"], name: "index_varietals_on_category_id"
  add_index "varietals", ["food_group_id"], name: "index_varietals_on_food_group_id"

end
