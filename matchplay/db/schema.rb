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

ActiveRecord::Schema.define(version: 20130820040045) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "par"
    t.string   "tees"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "golfers", force: true do |t|
    t.string   "name"
    t.integer  "handicap"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "holes", force: true do |t|
    t.integer  "hole_number"
    t.integer  "par"
    t.integer  "handicap"
    t.integer  "yardage"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "holes", ["course_id"], name: "index_holes_on_course_id"

  create_table "matches", force: true do |t|
    t.string   "name"
    t.string   "golfer1_id"
    t.string   "golfer2_id"
    t.integer  "score"
    t.string   "winner"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["course_id"], name: "index_matches_on_course_id"

  create_table "scores", force: true do |t|
    t.integer  "golfer_id"
    t.integer  "hole_id"
    t.integer  "match_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
