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

ActiveRecord::Schema.define(version: 20141214135712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "adminpack"

  create_table "contacts2", force: true do |t|
    t.text    "name_first"
    t.text    "name_last"
    t.text    "name"
    t.text    "street2"
    t.text    "street1"
    t.text    "city"
    t.text    "phone1"
    t.text    "state_province"
    t.text    "postal_code1"
    t.integer "domain_record_id"
    t.text    "postal_code2"
    t.text    "country"
    t.text    "email1"
    t.text    "email2"
    t.text    "contact_type"
  end

  create_table "contacts_domains2", id: false, force: true do |t|
    t.integer "contact_id"
    t.integer "domain_id"
  end

  create_table "domains", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "domains2", force: true do |t|
    t.integer  "iana_id"
    t.datetime "expires_date"
    t.text     "domain_name"
  end

  create_table "domains_nameservers2", id: false, force: true do |t|
    t.integer "domain_id"
    t.integer "nameserver_id"
  end

  create_table "nameservers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nameservers2", force: true do |t|
    t.text "name"
    t.text "url"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tables", force: true do |t|
  end

end
