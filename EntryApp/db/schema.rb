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

ActiveRecord::Schema.define(version: 20140409095225) do

  create_table "answers", force: true do |t|
    t.string   "content"
    t.integer  "points"
    t.string   "status"
    t.boolean  "correct"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attempt_answers", force: true do |t|
    t.integer  "answer_id"
    t.integer  "attempt_id"
    t.boolean  "chosen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attempt_questions", force: true do |t|
    t.integer  "question_id"
    t.integer  "attempt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attempts", force: true do |t|
    t.datetime "registration_date"
    t.integer  "result"
    t.datetime "start"
    t.datetime "end"
    t.integer  "timetable_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labels_questions", force: true do |t|
    t.integer  "question_id"
    t.integer  "label_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "difficulty"
    t.string   "content"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "title"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timetables", force: true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "slots"
    t.string   "location"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "personal_id"
    t.string   "email"
    t.integer  "phone_number"
    t.string   "city"
    t.string   "country"
    t.string   "gender"
    t.string   "address"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
    t.string   "remember_token"
    t.string   "password_digest"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
