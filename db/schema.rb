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

ActiveRecord::Schema.define(version: 20170331052611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email_address"
    t.string   "contact_number"
    t.string   "number_after_hours"
    t.string   "occupation"
    t.string   "experience"
    t.string   "insured_name"
    t.string   "trading_name"
    t.string   "subsidiaries"
    t.string   "abn"
    t.string   "website"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "state"
    t.string   "country"
    t.string   "post_code"
    t.string   "advice_type"
    t.string   "source"
    t.string   "current_insurer"
    t.string   "current_broker"
    t.string   "interested_parties"
    t.string   "expiry_date"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.text     "notes"
    t.boolean  "refused_policy",            default: false
    t.boolean  "refused_claim",             default: false
    t.boolean  "impose_special_conditions", default: false
    t.boolean  "convicted_or_bankrupt",     default: false
    t.boolean  "five_year_claims",          default: false
    t.text     "property_situation"
    t.integer  "quotes_count",              default: 0
  end

  create_table "quotes", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
