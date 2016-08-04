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

ActiveRecord::Schema.define(version: 20160804155517) do

  create_table "applications", force: :cascade do |t|
    t.string   "attachment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "job_id"
    t.integer  "user_id"
    t.integer  "bprofile_id"
  end

  add_index "applications", ["bprofile_id"], name: "index_applications_on_bprofile_id"
  add_index "applications", ["job_id"], name: "index_applications_on_job_id"
  add_index "applications", ["user_id"], name: "index_applications_on_user_id"

  create_table "bprofiles", force: :cascade do |t|
    t.string   "name"
    t.text     "summary"
    t.string   "copmpany_type"
    t.integer  "number_of_employes"
    t.string   "industry"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
  end

  add_index "bprofiles", ["user_id"], name: "index_bprofiles_on_user_id"

  create_table "invoice_items", force: :cascade do |t|
    t.string   "description"
    t.decimal  "quantity"
    t.integer  "product_id"
    t.integer  "tax_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "invoice_id"
  end

  add_index "invoice_items", ["invoice_id"], name: "index_invoice_items_on_invoice_id"
  add_index "invoice_items", ["product_id"], name: "index_invoice_items_on_product_id"

  create_table "invoices", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bprofile_id"
  end

  add_index "invoices", ["bprofile_id"], name: "index_invoices_on_bprofile_id"
  add_index "invoices", ["user_id"], name: "index_invoices_on_user_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "job_description"
    t.text     "job_function"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "bprofile_id"
  end

  add_index "jobs", ["bprofile_id"], name: "index_jobs_on_bprofile_id"
  add_index "jobs", ["user_id"], name: "index_jobs_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "bprofile_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "posts", ["bprofile_id"], name: "index_posts_on_bprofile_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.string   "product_description"
    t.decimal  "product_price"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "bprofile_id"
    t.integer  "user_id"
    t.integer  "invoice_id"
  end

  add_index "products", ["bprofile_id"], name: "index_products_on_bprofile_id"
  add_index "products", ["invoice_id"], name: "index_products_on_invoice_id"
  add_index "products", ["user_id"], name: "index_products_on_user_id"

  create_table "taxes", force: :cascade do |t|
    t.string   "name"
    t.decimal  "percentage"
    t.boolean  "default"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "invoice_id"
  end

  add_index "taxes", ["invoice_id"], name: "index_taxes_on_invoice_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "avatar"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "position"
    t.string   "contact_deatils"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
