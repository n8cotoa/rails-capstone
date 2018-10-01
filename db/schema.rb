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

ActiveRecord::Schema.define(version: 2018_10_01_214535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "encounters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "stradegy"
    t.integer "raid_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["raid_id"], name: "index_encounters_on_raid_id"
  end

  create_table "encounters_raid_symbols", id: false, force: :cascade do |t|
    t.bigint "encounter_id", null: false
    t.bigint "raid_symbol_id", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer "raid_id"
    t.integer "current_encounter_id"
    t.string "name"
    t.string "password_digest"
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.bigint "group_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "raid_symbols", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "raids", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end