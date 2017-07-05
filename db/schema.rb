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

ActiveRecord::Schema.define(version: 20170705200020) do

  create_table "panel_abouts", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.text     "about"
    t.text     "blockquote"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "panel_clients", force: :cascade do |t|
    t.string   "image"
    t.string   "link"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "panel_customs", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.text     "about"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "youtube"
    t.string   "linkedin"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "text_contact"
    t.string   "footer_title"
    t.text     "footer_text"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "panel_services", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "panel_slides", force: :cascade do |t|
    t.string   "link"
    t.string   "image"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "panel_styles", force: :cascade do |t|
    t.string   "nav_color"
    t.string   "footer_color"
    t.string   "a_color"
    t.string   "a_hover_color"
    t.string   "menu_color"
    t.string   "menu_hover_color"
    t.string   "nav_text_color"
    t.string   "footer_text_color"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "custom_css"
    t.string   "font_link"
    t.string   "font_family"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
