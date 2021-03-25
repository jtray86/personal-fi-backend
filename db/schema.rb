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

ActiveRecord::Schema.define(version: 2021_03_25_193003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "outgoing_id", null: false
    t.float "actual"
    t.date "paid_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outgoing_id"], name: "index_bills_on_outgoing_id"
    t.index ["user_id"], name: "index_bills_on_user_id"
  end

  create_table "debts", force: :cascade do |t|
    t.string "debt_type"
    t.string "name"
    t.float "inital_amount"
    t.float "current_amount"
    t.integer "interest"
    t.boolean "in_collection"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deposits", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "saving_id", null: false
    t.float "amount"
    t.date "deposit_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["saving_id"], name: "index_deposits_on_saving_id"
    t.index ["user_id"], name: "index_deposits_on_user_id"
  end

  create_table "earnings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "income_id", null: false
    t.float "actual"
    t.date "pay_day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["income_id"], name: "index_earnings_on_income_id"
    t.index ["user_id"], name: "index_earnings_on_user_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.string "income_type"
    t.string "name"
    t.float "projected"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "outgoings", force: :cascade do |t|
    t.string "outgoing_type"
    t.string "name"
    t.float "projected"
    t.date "due_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "savings", force: :cascade do |t|
    t.string "saving_type"
    t.string "name"
    t.float "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "debt_id", null: false
    t.float "amount"
    t.date "transaction_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["debt_id"], name: "index_transactions_on_debt_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bills", "outgoings"
  add_foreign_key "bills", "users"
  add_foreign_key "deposits", "savings"
  add_foreign_key "deposits", "users"
  add_foreign_key "earnings", "incomes"
  add_foreign_key "earnings", "users"
  add_foreign_key "transactions", "debts"
  add_foreign_key "transactions", "users"
end
