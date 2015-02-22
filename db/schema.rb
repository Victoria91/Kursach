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

ActiveRecord::Schema.define(version: 20150222175259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicine_forms", force: true do |t|
    t.integer  "medicine_id"
    t.integer  "form_id"
    t.integer  "price"
    t.integer  "quantity_pack"
    t.integer  "quantity_storage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medicine_forms", ["form_id"], name: "index_medicine_forms_on_form_id", using: :btree
  add_index "medicine_forms", ["medicine_id"], name: "index_medicine_forms_on_medicine_id", using: :btree

  create_table "medicines", force: true do |t|
    t.string   "name"
    t.integer  "min"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_id"
  end

  add_index "medicines", ["sale_id"], name: "index_medicines_on_sale_id", using: :btree

  create_table "sales", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "bank_rekv"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
