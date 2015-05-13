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

ActiveRecord::Schema.define(version: 20150513094035) do

  create_table "attendances", force: :cascade do |t|
    t.string   "attendance", limit: 255
    t.string   "client_id",  limit: 255
    t.string   "lesson_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "office_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "first_name",  limit: 255
    t.string   "middle_name", limit: 255
    t.string   "last_name",   limit: 255
    t.date     "birthdate"
    t.integer  "telephone_1"
    t.string   "email",       limit: 255
    t.string   "photo",       limit: 255
    t.string   "office_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "language_id"
    t.string   "info",        limit: 255
    t.integer  "cstatus_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "company_name", limit: 255
    t.string   "website",      limit: 255
    t.string   "phone_number", limit: 255
    t.string   "address",      limit: 255
    t.string   "logo",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cstatuses", force: :cascade do |t|
    t.string   "cstatus",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fullcalendar_engine_event_series", force: :cascade do |t|
    t.integer  "frequency",              default: 1
    t.string   "period",     limit: 255, default: "monthly"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",                default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fullcalendar_engine_events", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",                     default: false
    t.text     "description"
    t.integer  "event_series_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fullcalendar_engine_events", ["event_series_id"], name: "index_fullcalendar_engine_events_on_event_series_id"

  create_table "groups", force: :cascade do |t|
    t.string   "group_name",     limit: 255
    t.string   "teacher_id",     limit: 255
    t.string   "office_id",      limit: 255
    t.string   "book_id",        limit: 255
    t.string   "days",           limit: 255
    t.time     "time"
    t.integer  "duration"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "language_id"
    t.integer  "languagelvl_id"
  end

  create_table "languagelvls", force: :cascade do |t|
    t.string   "langlvl",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "lang",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "period_id"
    t.integer  "teacher_id"
    t.integer  "classroom_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company_id",   limit: 255
    t.string   "integer",      limit: 255
    t.string   "phone_number", limit: 255
    t.string   "address",      limit: 255
    t.string   "email",        limit: 255
  end

  create_table "periods", force: :cascade do |t|
    t.string   "PeroidDescription", limit: 255
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tprice_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "post",       limit: 255
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name",  limit: 255
    t.string   "middle_name", limit: 255
    t.string   "last_name",   limit: 255
    t.date     "birthdate"
    t.integer  "telephone_1"
    t.string   "email",       limit: 255
    t.string   "info",        limit: 255
    t.string   "photo",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tprices", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "tprice",     limit: 255
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
