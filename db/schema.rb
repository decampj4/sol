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

ActiveRecord::Schema.define(version: 20160201005414) do

  create_table "landlords", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "company",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "street_address_one", limit: 255
    t.string   "street_address_two", limit: 255
    t.string   "neighborhood",       limit: 255
    t.string   "city",               limit: 255
    t.string   "state",              limit: 255
    t.string   "postal_code",        limit: 255
    t.string   "country",            limit: 255
    t.integer  "bedrooms",           limit: 4
    t.float    "baths",              limit: 24
    t.float    "square_footage",     limit: 24
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "landlord_id",        limit: 4
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content",               limit: 65535
    t.integer  "rating",                limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "time_at_location",      limit: 4
    t.string   "time_at_location_type", limit: 255
    t.integer  "property_id",           limit: 4
  end

end
