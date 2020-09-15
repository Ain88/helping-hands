# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_14_222923) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "finished"
    t.integer "check_mark"
    t.index ["requests_id"], name: "index_enrollments_on_requests_id"
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "body"
    t.integer "sender_id"
    t.integer "requests_id", null: false
    t.integer "receiver_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receiver_id"], name: "index_messages_on_receiver_id"
    t.index ["requests_id"], name: "index_messages_on_requests_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "fulfilled"
  end

  create_table "requests", force: :cascade do |t|
    t.string "typev"
    t.string "location"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.integer "owner_id"
    t.string "address"
    t.integer "counter"
    t.integer "cur_counter"
    t.integer "is_active"
    t.datetime "rep_date"
    t.integer "check_mark"
    t.integer "fulfilled"
    t.index ["owner_id"], name: "index_requests_on_owner_id"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "final_counter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "requests_id", null: false
    t.integer "enrollments_id", null: false
    t.integer "messages_id", null: false
    t.index ["enrollments_id"], name: "index_stats_on_enrollments_id"
    t.index ["messages_id"], name: "index_stats_on_messages_id"
    t.index ["requests_id"], name: "index_stats_on_requests_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "enrollments", "requests", column: "requests_id"
  add_foreign_key "enrollments", "users"
  add_foreign_key "messages", "requests", column: "requests_id"
  add_foreign_key "messages", "users", column: "receiver_id"
  add_foreign_key "messages", "users", column: "sender_id"
  add_foreign_key "requests", "users", column: "owner_id"
  add_foreign_key "stats", "enrollments", column: "enrollments_id"
  add_foreign_key "stats", "messages", column: "messages_id"
  add_foreign_key "stats", "requests", column: "requests_id"
end
