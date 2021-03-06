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

ActiveRecord::Schema.define(version: 20161123184217) do

  create_table "branches", force: :cascade do |t|
    t.datetime "git_updated_at",              null: false
    t.text     "name",           limit: 1024, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "author_id"
    t.integer  "repository_id"
  end

  add_index "branches", ["author_id"], name: "index_branches_on_author_id"
  add_index "branches", ["repository_id"], name: "index_branches_on_repository_id"

  create_table "commits", force: :cascade do |t|
    t.text     "sha",        limit: 40,   null: false
    t.text     "message",    limit: 1024, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "author_id"
  end

  add_index "commits", ["author_id"], name: "index_commits_on_author_id"

  create_table "repositories", force: :cascade do |t|
    t.text     "name",       limit: 1024, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.text     "name",       limit: 255, null: false
    t.text     "email",      limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
