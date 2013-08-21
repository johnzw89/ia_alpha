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

ActiveRecord::Schema.define(:version => 20130821042756) do

  create_table "comic_pages", :force => true do |t|
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "page_image_file_name"
    t.string   "page_image_content_type"
    t.integer  "page_image_file_size"
    t.datetime "page_image_updated_at"
    t.integer  "comic_id"
    t.integer  "page_number"
  end

  add_index "comic_pages", ["comic_id"], :name => "index_comic_pages_on_comic_id"
  add_index "comic_pages", ["id"], :name => "index_comic_pages_on_id"
  add_index "comic_pages", ["page_number"], :name => "index_comic_pages_on_page_number"

  create_table "comic_titles", :force => true do |t|
    t.string   "synopsis"
    t.string   "user_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "title"
    t.string   "cover_page_file_name"
    t.string   "cover_page_content_type"
    t.integer  "cover_page_file_size"
    t.datetime "cover_page_updated_at"
  end

  add_index "comic_titles", ["created_at"], :name => "index_comic_titles_on_created_at"
  add_index "comic_titles", ["id"], :name => "index_comic_titles_on_id"

  create_table "comics", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_id"
    t.string   "synopsis"
    t.integer  "comic_title_id"
    t.string   "title"
  end

  add_index "comics", ["user_id"], :name => "index_comics_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
