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

ActiveRecord::Schema.define(version: 20160608073246) do

  create_table "c_to_u_likes", force: :cascade do |t|
    t.integer  "company_id", limit: 4
    t.integer  "user_id",    limit: 4
    t.integer  "price",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "name",                   limit: 255
    t.text     "catch_copy",             limit: 65535
    t.text     "business",               limit: 65535
    t.text     "job_description",        limit: 65535
    t.text     "offer_information",      limit: 65535
    t.text     "app_qualification",      limit: 65535
    t.text     "annual_income",          limit: 65535
    t.string   "location",               limit: 255
    t.string   "working_hours",          limit: 255
    t.text     "url",                    limit: 65535
    t.text     "image_url",              limit: 65535
  end

  add_index "companies", ["email"], name: "index_companies_on_email", unique: true, using: :btree
  add_index "companies", ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true, using: :btree

  create_table "u_to_c_likes", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "company_id", limit: 4
    t.integer  "price",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "first_name_kana",        limit: 255
    t.string   "last_name_kana",         limit: 255
    t.integer  "birth_y",                limit: 4
    t.integer  "birth_m",                limit: 4
    t.integer  "birth_d",                limit: 4
    t.text     "address",                limit: 65535
    t.integer  "phone_num",              limit: 4
    t.text     "final_education",        limit: 65535
    t.text     "job_history",            limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
