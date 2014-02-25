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

ActiveRecord::Schema.define(version: 20140225223308) do

  create_table "campaigns", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "backstory"
    t.integer  "user_id"
  end

  create_table "creatures", force: true do |t|
    t.string   "name"
    t.float    "cr"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "encounter_id"
    t.string   "hit_points"
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.string   "melee"
    t.string   "ranged"
    t.string   "special_attacks"
    t.integer  "init"
    t.string   "senses"
    t.string   "size"
    t.string   "type"
    t.string   "alignment"
    t.integer  "natural_armor"
    t.integer  "fortitude"
    t.integer  "reflex"
    t.integer  "will"
    t.string   "damage_reduction"
    t.string   "immunities"
    t.integer  "speed"
    t.integer  "space"
    t.integer  "reach"
    t.integer  "base_attack"
    t.integer  "cmb"
    t.integer  "cmd"
    t.string   "languages"
    t.string   "special_abilities"
  end

  create_table "encounters", force: true do |t|
    t.string   "name"
    t.integer  "campaign_id"
    t.string   "story"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "npcs", force: true do |t|
    t.string   "name"
    t.integer  "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
