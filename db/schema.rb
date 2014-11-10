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

ActiveRecord::Schema.define(version: 20141107044430) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.integer  "view_count"
    t.string   "image"
    t.integer  "status_id"
    t.string   "kind"
    t.boolean  "is_recommend"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["kind"], name: "index_articles_on_kind", using: :btree
  add_index "articles", ["status_id"], name: "index_articles_on_status_id", using: :btree

  create_table "cases", force: true do |t|
    t.string   "before_image"
    t.string   "after_image"
    t.string   "title"
    t.string   "info"
    t.integer  "entry_id"
    t.string   "entry_type"
    t.boolean  "is_recommend"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contents", force: true do |t|
    t.string   "item_id"
    t.string   "item_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contents", ["item_id", "item_type"], name: "index_contents_on_item_id_and_item_type", using: :btree

  create_table "homes", force: true do |t|
    t.string   "title"
    t.string   "flag"
    t.text     "content"
    t.string   "image"
    t.string   "url"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "homes", ["flag"], name: "index_homes_on_flag", using: :btree

  create_table "pages", force: true do |t|
    t.string   "title"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["kind"], name: "index_pages_on_kind", using: :btree

  create_table "person_cards", force: true do |t|
    t.string   "title"
    t.integer  "entry_id"
    t.string   "entry_type"
    t.string   "info"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "short_title"
    t.text     "info"
    t.boolean  "is_special",  default: false
    t.integer  "parent_id"
    t.string   "image"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "question"
    t.text     "answer"
    t.integer  "entry_id"
    t.string   "entry_type"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
