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

ActiveRecord::Schema.define(version: 20170821233112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "code_classes", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "max_students"
    t.integer "min_students"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "phone"
    t.integer "employee_id"
    t.string "start_time"
    t.string "end_time"
    t.string "start_date"
    t.string "end_date"
    t.decimal "price", precision: 9, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "address"
    t.string "image"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "super_admin", default: false
    t.boolean "admin", default: false
    t.boolean "manager", default: false
    t.boolean "volunteer", default: false
    t.string "status"
    t.string "company_logo"
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

  create_table "guardians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "home_phone"
    t.string "cell_phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "guardian", default: false
    t.string "status"
    t.index ["email"], name: "index_guardians_on_email", unique: true
    t.index ["reset_password_token"], name: "index_guardians_on_reset_password_token", unique: true
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_type"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.integer "zip"
  end

  create_table "student_class_lists", force: :cascade do |t|
    t.integer "student_id"
    t.integer "code_classes_id"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "user_name"
    t.string "first_name"
    t.string "last_name"
    t.string "medications"
    t.string "medical_condition"
    t.string "img"
    t.string "img_release"
    t.string "birth_date"
    t.string "gender"
    t.string "race"
    t.string "emergency_contact"
    t.string "emergency_contact_phone"
    t.integer "guardian_id"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.integer "zip"
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_type"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
