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

ActiveRecord::Schema.define(version: 20170922192400) do

  create_table "check_ins", force: :cascade do |t|
    t.string   "photo",       default: ""
    t.string   "lat",         default: ""
    t.string   "lng",         default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "employee_id"
    t.index ["employee_id"], name: "index_check_ins_on_employee_id"
  end

  create_table "check_outs", force: :cascade do |t|
    t.string   "photo",       default: ""
    t.string   "lat",         default: ""
    t.string   "lng",         default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "employee_id"
    t.index ["employee_id"], name: "index_check_outs_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name",        default: ""
    t.string   "last_name",   default: ""
    t.string   "middle_name", default: ""
    t.string   "photo",       default: ""
    t.string   "number",      default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "employer_id"
    t.index ["employer_id"], name: "index_employees_on_employer_id"
  end

  create_table "employers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name",                   default: ""
    t.string   "middle_name",            default: ""
    t.string   "last_name",              default: ""
    t.string   "company",                default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_employers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employers_on_reset_password_token", unique: true
  end

end
