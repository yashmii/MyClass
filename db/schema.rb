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

ActiveRecord::Schema.define(version: 20151007084830) do

  create_table "attendances", force: :cascade do |t|
    t.string   "attendance"
    t.string   "client_id"
    t.string   "lesson_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "office_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.integer  "telephone_1"
    t.string   "email"
    t.string   "photo"
    t.string   "office_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "language_id"
    t.string   "info"
    t.integer  "cstatus_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.string   "website"
    t.string   "phone_number"
    t.string   "address"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crms", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "info"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "time"
  end

  create_table "cstatuses", force: :cascade do |t|
    t.string   "cstatus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "group_name"
    t.string   "teacher_id"
    t.string   "office_id"
    t.string   "book_id"
    t.string   "days"
    t.time     "time"
    t.integer  "duration"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "language_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "lang"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "period_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "teacher_id"
    t.integer  "classroom_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company_id"
    t.string   "integer"
    t.string   "phone_number"
    t.string   "address"
    t.string   "email"
  end

  create_table "periods", force: :cascade do |t|
    t.string   "PeroidDescription"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tprice_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "post"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.integer  "telephone_1"
    t.string   "email"
    t.string   "info"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tprices", force: :cascade do |t|
    t.string   "name"
    t.string   "tprice"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
