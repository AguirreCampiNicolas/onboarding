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

ActiveRecord::Schema[7.1].define(version: 2024_06_12_173548) do
  create_table "orders", force: :cascade do |t|
    t.integer "quantity", default: 1, null: false
    t.integer "product_id", null: false
    t.integer "user_id", null: false
    t.string "personalization"
    t.decimal "total", null: false
    t.bigint "rut", null: false
    t.string "bussines_name", null: false
    t.string "receiver_contact_number", null: false
    t.string "receiver_full_name", null: false
    t.date "ship_date", null: false
    t.time "ship_time", null: false
    t.string "ship_address", null: false
    t.decimal "ship_cost", null: false
    t.boolean "retry_shipping", default: false
    t.boolean "sourprise_shipping", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.decimal "price", default: "0.0", null: false
    t.integer "rate", default: 0
    t.string "description", default: ""
    t.boolean "vegan_or_vegetarian", default: false
    t.boolean "sugar_free", default: false
    t.boolean "no_tacc", default: false
    t.boolean "apetizer", default: false
    t.boolean "for_sharing", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "service_id", null: false
    t.index ["service_id"], name: "index_products_on_service_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "service_users", force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_service_users_on_service_id"
    t.index ["user_id"], name: "index_service_users_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "description", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.string "company_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["type"], name: "index_users_on_type"
  end

  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "services"
  add_foreign_key "products", "users"
  add_foreign_key "service_users", "services"
  add_foreign_key "service_users", "users"
end
