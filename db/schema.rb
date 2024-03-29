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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120306055811) do

  create_table "jobs", :force => true do |t|
    t.string   "name"
    t.text     "company"
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jobs_reviews", :id => false, :force => true do |t|
    t.integer "job_id"
    t.integer "review_id"
  end

  create_table "jobs_users", :id => false, :force => true do |t|
    t.integer "job_id"
    t.integer "user_id"
  end

  create_table "reviews", :force => true do |t|
    t.integer  "rating"
    t.date     "start"
    t.date     "end"
    t.text     "atmosphere"
    t.text     "skills"
    t.text     "duties"
    t.text     "eval"
    t.integer  "user_id"
    t.integer  "job_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
