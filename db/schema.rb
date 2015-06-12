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

ActiveRecord::Schema.define(version: 20150612180355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affiliates", force: :cascade do |t|
    t.string   "cep"
    t.string   "responsible"
    t.string   "geolocation"
    t.integer  "city_id"
    t.integer  "state_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "affiliates", ["city_id"], name: "index_affiliates_on_city_id", using: :btree
  add_index "affiliates", ["state_id"], name: "index_affiliates_on_state_id", using: :btree

  create_table "benefits", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "default_value"
    t.text     "observation"
    t.boolean  "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.boolean  "capital"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "costs", force: :cascade do |t|
    t.float    "value"
    t.integer  "user_id"
    t.integer  "benefit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "costs", ["benefit_id"], name: "index_costs_on_benefit_id", using: :btree
  add_index "costs", ["user_id"], name: "index_costs_on_user_id", using: :btree

  create_table "curriculums", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.integer  "unit"
    t.integer  "field"
    t.string   "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "desk_supplies", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "telphone"
    t.string   "geolocation"
    t.integer  "city_id"
    t.integer  "state_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "desk_supplies", ["city_id"], name: "index_desk_supplies_on_city_id", using: :btree
  add_index "desk_supplies", ["state_id"], name: "index_desk_supplies_on_state_id", using: :btree

  create_table "footholds", force: :cascade do |t|
    t.string   "name"
    t.string   "local"
    t.string   "responsible"
    t.string   "geolocation"
    t.text     "observation"
    t.integer  "affiliate_id"
    t.integer  "work_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "footholds", ["affiliate_id"], name: "index_footholds_on_affiliate_id", using: :btree
  add_index "footholds", ["work_id"], name: "index_footholds_on_work_id", using: :btree

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "name"
    t.string   "account"
    t.string   "bank"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.float    "value"
    t.text     "description"
    t.boolean  "status"
    t.date     "deadline"
    t.integer  "provider_id"
    t.integer  "payment_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "payments", ["payment_type_id"], name: "index_payments_on_payment_type_id", using: :btree
  add_index "payments", ["provider_id"], name: "index_payments_on_provider_id", using: :btree

  create_table "provider_types", force: :cascade do |t|
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "cnpj"
    t.text     "address"
    t.string   "telphone"
    t.string   "fax"
    t.string   "cep"
    t.integer  "state_id"
    t.integer  "city_id"
    t.string   "state_number"
    t.string   "email"
    t.string   "contact_name"
    t.string   "contact_telphone"
    t.string   "contact_email"
    t.text     "observation"
    t.integer  "work_id"
    t.integer  "affiliate_id"
    t.integer  "provider_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "providers", ["affiliate_id"], name: "index_providers_on_affiliate_id", using: :btree
  add_index "providers", ["city_id"], name: "index_providers_on_city_id", using: :btree
  add_index "providers", ["provider_type_id"], name: "index_providers_on_provider_type_id", using: :btree
  add_index "providers", ["state_id"], name: "index_providers_on_state_id", using: :btree
  add_index "providers", ["work_id"], name: "index_providers_on_work_id", using: :btree

  create_table "sectors", force: :cascade do |t|
    t.string   "name"
    t.string   "acronym"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "code"
    t.string   "cpf"
    t.string   "job_function"
    t.integer  "sector_id"
    t.integer  "job_id"
    t.boolean  "status"
    t.text     "address"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "foothold_id"
    t.integer  "affiliate_id"
    t.integer  "work_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicle_consumptions", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.float    "km_start"
    t.float    "km_end"
    t.float    "gas_liter"
    t.float    "value_liter"
    t.date     "date"
    t.text     "number_notes"
    t.text     "observation"
    t.integer  "desk_supplie_id"
    t.integer  "driver_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "vehicle_consumptions", ["desk_supplie_id"], name: "index_vehicle_consumptions_on_desk_supplie_id", using: :btree
  add_index "vehicle_consumptions", ["driver_id"], name: "index_vehicle_consumptions_on_driver_id", using: :btree
  add_index "vehicle_consumptions", ["vehicle_id"], name: "index_vehicle_consumptions_on_vehicle_id", using: :btree

  create_table "vehicle_services", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "observation"
    t.boolean  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "patrimony"
    t.integer  "status_vehicle"
    t.string   "vehicle_plate"
    t.integer  "vehicle_type_id"
    t.integer  "vehicle_service_id"
    t.integer  "provider_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "vehicles", ["provider_id"], name: "index_vehicles_on_provider_id", using: :btree
  add_index "vehicles", ["vehicle_service_id"], name: "index_vehicles_on_vehicle_service_id", using: :btree
  add_index "vehicles", ["vehicle_type_id"], name: "index_vehicles_on_vehicle_type_id", using: :btree

  create_table "work_types", force: :cascade do |t|
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "works", force: :cascade do |t|
    t.string   "name"
    t.string   "local"
    t.string   "geolocation"
    t.string   "responsible"
    t.integer  "work_type_id"
    t.integer  "affiliate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "works", ["affiliate_id"], name: "index_works_on_affiliate_id", using: :btree
  add_index "works", ["work_type_id"], name: "index_works_on_work_type_id", using: :btree

  add_foreign_key "affiliates", "cities"
  add_foreign_key "affiliates", "states"
  add_foreign_key "cities", "states"
  add_foreign_key "costs", "benefits"
  add_foreign_key "costs", "users"
  add_foreign_key "desk_supplies", "cities"
  add_foreign_key "desk_supplies", "states"
  add_foreign_key "footholds", "affiliates"
  add_foreign_key "footholds", "works"
  add_foreign_key "payments", "payment_types"
  add_foreign_key "payments", "providers"
  add_foreign_key "providers", "affiliates"
  add_foreign_key "providers", "cities"
  add_foreign_key "providers", "provider_types"
  add_foreign_key "providers", "states"
  add_foreign_key "providers", "works"
  add_foreign_key "works", "affiliates"
  add_foreign_key "works", "work_types"
end
