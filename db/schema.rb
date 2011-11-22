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

ActiveRecord::Schema.define(:version => 20111120164843) do

  create_table "addresses", :force => true do |t|
    t.string   "ad_typ"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "state"
    t.string   "city"
    t.string   "country"
    t.string   "prim_contact"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_types", :force => true do |t|
    t.string   "business_type"
    t.string   "business_name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commodities", :force => true do |t|
    t.string   "commodity_type"
    t.string   "commodity_name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "service_type"
    t.string   "service_name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "encrypted_passwords"
    t.string   "salt"
    t.integer  "security_question"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string  "encrypted_security_answer"
  end

  create_table "vendors", :force => true do |t|
    t.string   "user"
    t.string   "lgl_nm"
    t.string   "first_nm"
    t.string   "last_nm"
    t.string   "classification"
    t.string   "Tin"
    t.string   "Tin_Typ"
    t.string   "lgl_addr1"
    t.string   "lgl_addr2"
    t.string   "state"
    t.string   "city"
    t.string   "country"
    t.string   "zip"
    t.boolean  "primay_acct"
    t.string   "pnt_acct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
