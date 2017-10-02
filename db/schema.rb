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

ActiveRecord::Schema.define(version: 20171002235835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "camps", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "max_students"
    t.integer "min_students"
    t.string "address_1"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.integer "employee_id"
    t.string "start_time"
    t.string "end_time"
    t.string "start_date"
    t.string "end_date"
    t.decimal "price", precision: 9, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.string "address_2"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "address_1"
    t.string "image"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.string "zip"
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
    t.integer "user_type"
    t.string "country"
    t.string "address_2"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

  create_table "guardians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "home_phone"
    t.string "cell_phone"
    t.string "address_1"
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
    t.string "status"
    t.string "country"
    t.string "address_2"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["email"], name: "index_guardians_on_email", unique: true
    t.index ["reset_password_token"], name: "index_guardians_on_reset_password_token", unique: true
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "installs", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_installs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_type"
    t.string "address_1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.boolean "status"
    t.string "address_2"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "partners", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "country"
    t.index ["email"], name: "index_partners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_partners_on_reset_password_token", unique: true
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
    t.string "address_1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "address_2"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_type"
    t.string "phone"
    t.string "address_1"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.string "address_2"
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
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["email"], name: "index_volunteers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_volunteers_on_reset_password_token", unique: true
  end

end
