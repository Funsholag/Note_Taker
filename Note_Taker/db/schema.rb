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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170508205256) do

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "school"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "content"
    t.string   "title"
=======
ActiveRecord::Schema.define(version: 20170508205252) do

  create_table "professors", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "classroom"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "username"
    t.string   "fname"
    t.string   "lname"
    t.string   "school"
    t.string   "classroom"
    t.string   "study"
>>>>>>> cbe9db176f0a68e4d1fe0a1d8d111af04f8663c6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
