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

ActiveRecord::Schema.define(version: 20160323114733) do

  create_table "admins", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "courseTitle"
    t.string   "courseCode"
    t.string   "instructor"
    t.string   "school"
    t.integer  "ourPrice"
    t.integer  "canotechPrice"
    t.integer  "numCopies"
    t.string   "bookTitle"
    t.string   "author"
    t.string   "edition"
    t.string   "dept"
    t.string   "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "rollNum"
    t.string   "name"
    t.string   "mobileNum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.text     "bookIDs"
    t.integer  "customerID"
    t.string   "status"
    t.date     "dateOrdered"
    t.text     "quantities"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "bookID"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string   "author"
    t.string   "edition"
    t.string   "bookTitle"
    t.string   "instructor"
    t.string   "courseCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer  "customerID"
    t.integer  "orderID"
    t.integer  "bookID"
    t.integer  "quantity"
    t.integer  "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
