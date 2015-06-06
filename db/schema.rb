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

ActiveRecord::Schema.define(version: 20150606162642) do

  create_table "clients", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "cellphone"
    t.integer  "company_id"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clients", ["company_id"], name: "index_clients_on_company_id"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "rfc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exchange_rates", force: :cascade do |t|
    t.datetime "date"
    t.decimal  "value"
    t.integer  "foreing_exchange_orig_id"
    t.integer  "foreing_exchange_dest_id"
    t.integer  "operation_type"
    t.date     "value_date"
    t.integer  "company_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "exchange_rates", ["company_id"], name: "index_exchange_rates_on_company_id"
  add_index "exchange_rates", ["foreing_exchange_dest_id"], name: "index_exchange_rates_on_foreing_exchange_dest_id"
  add_index "exchange_rates", ["foreing_exchange_orig_id"], name: "index_exchange_rates_on_foreing_exchange_orig_id"

  create_table "foreign_exchanges", force: :cascade do |t|
    t.string   "description"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "foreign_exchange_id"
    t.date     "date"
    t.decimal  "amount"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "positions", ["company_id"], name: "index_positions_on_company_id"
  add_index "positions", ["foreign_exchange_id"], name: "index_positions_on_foreign_exchange_id"

  create_table "transactions", force: :cascade do |t|
    t.integer  "foreign_exchange_id"
    t.integer  "client_id"
    t.integer  "exchange_rate_id"
    t.decimal  "amount"
    t.date     "value_date"
    t.integer  "company_id"
    t.integer  "operation_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "transactions", ["client_id"], name: "index_transactions_on_client_id"
  add_index "transactions", ["company_id"], name: "index_transactions_on_company_id"
  add_index "transactions", ["exchange_rate_id"], name: "index_transactions_on_exchange_rate_id"
  add_index "transactions", ["foreign_exchange_id"], name: "index_transactions_on_foreign_exchange_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id"

end
