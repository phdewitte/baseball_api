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

ActiveRecord::Schema.define(version: 20160907030854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string   "api_id",           null: false
    t.string   "first_name",       null: false
    t.string   "last_name",        null: false
    t.integer  "jersey_number",    null: false
    t.string   "birthdate",        null: false
    t.integer  "height",           null: false
    t.integer  "weight",           null: false
    t.string   "bat_hand",         null: false
    t.string   "throw_hand",       null: false
    t.string   "primary_position", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "team_id"
  end

  create_table "statistics", force: :cascade do |t|
    t.integer  "hits"
    t.integer  "homeruns"
    t.integer  "rbi"
    t.float    "avg"
    t.float    "obp"
    t.float    "ops"
    t.string   "win_loss"
    t.float    "era"
    t.integer  "strikeouts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "api_id",                   null: false
    t.string   "market",                   null: false
    t.string   "name",                     null: false
    t.text     "api_players", default: [],              array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
