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

ActiveRecord::Schema.define(version: 20141229135816) do

  create_table "atach_files", force: true do |t|
    t.integer  "route_id"
    t.integer  "node_id"
    t.string   "url_file",   limit: 2083
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "atach_texts", force: true do |t|
    t.integer  "route_id"
    t.integer  "node_id"
    t.text     "import_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coordinates", force: true do |t|
    t.decimal  "coordinate_E"
    t.decimal  "coordinate_N"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coordinates_routes", id: false, force: true do |t|
    t.integer "coordinate_order"
    t.integer "coordinate_id"
    t.integer "route_id"
  end

  create_table "nodes", force: true do |t|
    t.string   "label"
    t.integer  "coordinate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "route_orders", force: true do |t|
    t.integer  "route_order"
    t.integer  "coordinate_id"
    t.integer  "route_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
