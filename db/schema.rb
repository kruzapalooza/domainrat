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

ActiveRecord::Schema.define(version: 20150104175643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "org"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
  end

  create_table "domains", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "iana_id"
    t.string   "expire_date"
    t.string   "domain_name"
  end

  create_table "nameservers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "registrars", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "iana_id"
    t.string   "name"
    t.string   "registrar_name"
    t.string   "whois_server"
    t.string   "abuse_email"
    t.string   "abuse_phone"
  end

end
