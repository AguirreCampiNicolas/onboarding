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

ActiveRecord::Schema[7.1].define(version: 2024_06_19_144647) do
  create_table "delivery_addresses", force: :cascade do |t|
    t.integer "order_id", null: false
    t.string "full_name"
    t.string "contact"
    t.date "date"
    t.time "time"
    t.string "address"
    t.decimal "ship_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_delivery_addresses_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "quantity", default: 1, null: false
    t.integer "product_id", null: false
    t.integer "user_id", null: false
    t.string "personalization"
    t.decimal "total", null: false
    t.bigint "rut", null: false
    t.string "bussines_name", null: false
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
    t.string "type"
    t.string "image_url", default: "foodbox-example.png"
    t.index ["user_id"], name: "index_products_on_user_id"
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
    t.string "name"
    t.string "phone"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["type"], name: "index_users_on_type"
  end

  add_foreign_key "delivery_addresses", "orders"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "users"
end
