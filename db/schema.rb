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

ActiveRecord::Schema.define(version: 20180519185525) do

  create_table "check_ns", force: :cascade do |t|
    t.string   "name"
    t.integer  "moeny"
    t.integer  "PostN_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["PostN_id"], name: "index_check_ns_on_PostN_id"
  end

  create_table "checks", force: :cascade do |t|
    t.string   "name"
    t.integer  "money"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_checks_on_post_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "freepost_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["freepost_id"], name: "index_comments_on_freepost_id"
  end

  create_table "freeposts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "username"
    t.index ["user_id"], name: "index_freeposts_on_user_id"
  end

  create_table "post_ns", force: :cascade do |t|
    t.date     "date"
    t.string   "title"
    t.string   "etc"
    t.integer  "user_id"
    t.integer  "total_price"
    t.integer  "member"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "posts", force: :cascade do |t|
    t.date     "date"
    t.string   "title"
    t.string   "etc"
    t.integer  "user_id"
    t.integer  "total_price"
    t.integer  "member"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string   "item"
    t.integer  "EA"
    t.integer  "price"
    t.integer  "total"
    t.string   "etc"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "member"
    t.index ["post_id"], name: "index_tables_on_post_id"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
