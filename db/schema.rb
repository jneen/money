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

ActiveRecord::Schema.define(:version => 20100731194019) do

  create_table "line_items", :force => true do |t|
    t.string   "description"
    t.integer  "receipt_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["receipt_id"], :name => "index_line_items_on_receipt_id"

  create_table "pool_memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "pool_id"
    t.integer  "stake",      :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pool_memberships", ["pool_id"], :name => "index_pool_memberships_on_pool_id"
  add_index "pool_memberships", ["user_id"], :name => "index_pool_memberships_on_user_id"

  create_table "pools", :force => true do |t|
    t.string   "slug"
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pools", ["slug"], :name => "index_pools_on_slug", :unique => true

  create_table "receipts", :force => true do |t|
    t.datetime "spent_at"
    t.integer  "pool_id"
    t.integer  "spender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "receipts", ["pool_id", "spent_at"], :name => "index_receipts_on_pool_id_and_spent_at"
  add_index "receipts", ["spender_id", "spent_at"], :name => "index_receipts_on_spender_id_and_spent_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "fbuid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["fbuid"], :name => "index_users_on_fbuid", :unique => true

end
