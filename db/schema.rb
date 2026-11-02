# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_11_02_022832) do
  create_table "blindcarboncopies", force: :cascade do |t|
    t.integer "email_id", null: false
    t.integer "employee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email_id"], name: "index_blindcarboncopies_on_email_id"
    t.index ["employee_id"], name: "index_blindcarboncopies_on_employee_id"
  end

  create_table "carboncopies", force: :cascade do |t|
    t.integer "email_id", null: false
    t.integer "employee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email_id"], name: "index_carboncopies_on_email_id"
    t.index ["employee_id"], name: "index_carboncopies_on_employee_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "from"
    t.string "to"
    t.string "subject"
    t.text "content"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employeefriends", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employeefriends_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "fullname"
    t.string "email"
    t.string "password"
    t.string "pic"
    t.string "dob"
    t.string "company"
    t.string "city"
    t.string "gender"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendrequests", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_friendrequests_on_employee_id"
  end

  add_foreign_key "blindcarboncopies", "emails"
  add_foreign_key "blindcarboncopies", "employees"
  add_foreign_key "carboncopies", "emails"
  add_foreign_key "carboncopies", "employees"
  add_foreign_key "employeefriends", "employees"
  add_foreign_key "friendrequests", "employees"
end
