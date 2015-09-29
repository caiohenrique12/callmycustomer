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

ActiveRecord::Schema.define(version: 20150924145001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "call_finishes", force: :cascade do |t|
    t.integer  "id_call"
    t.integer  "id_user"
    t.text     "observation"
    t.boolean  "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "call_services", force: :cascade do |t|
    t.integer  "id_customer"
    t.integer  "id_service"
    t.integer  "id_component"
    t.text     "details"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "id_situation"
  end

  create_table "components", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone1"
    t.integer  "phone2"
    t.integer  "age"
    t.string   "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "situations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nome"
    t.string   "password"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "email"
    t.string   "unique"
    t.string   "true"
    t.string   "password_digest"
    t.datetime "confirmed_at"
    t.string   "confirmation_token"
  end

end
