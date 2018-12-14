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

ActiveRecord::Schema.define(version: 20181212101626) do

  create_table "brand_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "brand_id"
    t.integer  "first_category_id"
    t.index ["brand_id"], name: "index_brand_categories_on_brand_id", using: :btree
    t.index ["first_category_id"], name: "index_brand_categories_on_first_category_id", using: :btree
  end

  create_table "brands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "brand"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "first_category_id"
    t.index ["first_category_id"], name: "index_brands_on_first_category_id", using: :btree
  end

  create_table "communications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "message",         limit: 65535
    t.boolean  "seller_or_buyer"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "user_id"
    t.integer  "item_id"
    t.integer  "order_status_id"
    t.index ["item_id"], name: "index_communications_on_item_id", using: :btree
    t.index ["order_status_id"], name: "index_communications_on_order_status_id", using: :btree
    t.index ["user_id"], name: "index_communications_on_user_id", using: :btree
  end

  create_table "conditions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "condition",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_charges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "charge",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_dates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "date",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_ways", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "way",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "first_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_category", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "flags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "item_id"
    t.index ["item_id"], name: "index_flags_on_item_id", using: :btree
    t.index ["user_id"], name: "index_flags_on_user_id", using: :btree
  end

  create_table "item_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "image",      limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "item_id"
    t.index ["item_id"], name: "index_item_images_on_item_id", using: :btree
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                             null: false
    t.integer  "price",                            null: false
    t.text     "description",        limit: 65535, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "user_id"
    t.integer  "first_category_id"
    t.integer  "second_category_id"
    t.integer  "third_category_id"
    t.integer  "brand_id"
    t.integer  "size_id"
    t.integer  "condition_id"
    t.integer  "delivery_charge_id"
    t.integer  "prefecture_id"
    t.integer  "delivery_date_id"
    t.integer  "order_status_id"
    t.integer  "delivery_way_id"
    t.index ["brand_id"], name: "index_items_on_brand_id", using: :btree
    t.index ["condition_id"], name: "index_items_on_condition_id", using: :btree
    t.index ["delivery_charge_id"], name: "index_items_on_delivery_charge_id", using: :btree
    t.index ["delivery_date_id"], name: "index_items_on_delivery_date_id", using: :btree
    t.index ["delivery_way_id"], name: "index_items_on_delivery_way_id", using: :btree
    t.index ["first_category_id"], name: "index_items_on_first_category_id", using: :btree
    t.index ["order_status_id"], name: "index_items_on_order_status_id", using: :btree
    t.index ["prefecture_id"], name: "index_items_on_prefecture_id", using: :btree
    t.index ["second_category_id"], name: "index_items_on_second_category_id", using: :btree
    t.index ["size_id"], name: "index_items_on_size_id", using: :btree
    t.index ["third_category_id"], name: "index_items_on_third_category_id", using: :btree
    t.index ["user_id"], name: "index_items_on_user_id", using: :btree
  end

  create_table "likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "item_id"
    t.index ["item_id"], name: "index_likes_on_item_id", using: :btree
    t.index ["user_id"], name: "index_likes_on_user_id", using: :btree
  end

  create_table "order_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "order_status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name_delivery",      null: false
    t.string   "first_name_kana_delivery", null: false
    t.string   "last_name_delivery",       null: false
    t.string   "last_name_kana_delivery",  null: false
    t.string   "city_delivery",            null: false
    t.string   "adress_delivery",          null: false
    t.string   "building_delivery"
    t.integer  "zip_code_delivery",        null: false
    t.integer  "telephone_delivery"
    t.integer  "payment_method",           null: false
    t.integer  "point"
    t.boolean  "user_point"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
    t.integer  "item_id"
    t.integer  "prefecture_id"
    t.index ["item_id"], name: "index_orders_on_item_id", using: :btree
    t.index ["prefecture_id"], name: "index_orders_on_prefecture_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "payment_informations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "card_number", null: false
    t.integer  "valid_year",  null: false
    t.integer  "valid_month", null: false
    t.integer  "cvc",         null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_payment_informations_on_user_id", using: :btree
  end

  create_table "point_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "point_status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "points", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "amount"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "point_status_id"
    t.index ["point_status_id"], name: "index_points_on_point_status_id", using: :btree
    t.index ["user_id"], name: "index_points_on_user_id", using: :btree
  end

  create_table "prefectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "prefecture", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "profit"
    t.datetime "expiration_date"
    t.boolean  "profit_is_valid"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "item_id"
    t.index ["item_id"], name: "index_profits_on_item_id", using: :btree
    t.index ["user_id"], name: "index_profits_on_user_id", using: :btree
  end

  create_table "rate_counts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "message",         limit: 65535, null: false
    t.boolean  "seller_or_buyer"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "rate_id"
    t.integer  "user_id"
    t.integer  "item_id"
    t.index ["item_id"], name: "index_rate_counts_on_item_id", using: :btree
    t.index ["rate_id"], name: "index_rate_counts_on_rate_id", using: :btree
    t.index ["user_id"], name: "index_rate_counts_on_user_id", using: :btree
  end

  create_table "rates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "second_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "second_category",   null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "first_category_id"
    t.integer  "size_category_id"
    t.index ["first_category_id"], name: "index_second_categories_on_first_category_id", using: :btree
    t.index ["size_category_id"], name: "index_second_categories_on_size_category_id", using: :btree
  end

  create_table "size_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "size_category"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "sizes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "size",             null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "size_category_id"
    t.index ["size_category_id"], name: "index_sizes_on_size_category_id", using: :btree
  end

  create_table "third_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "third_category",     null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "second_category_id"
    t.index ["second_category_id"], name: "index_third_categories_on_second_category_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nickname",                                          null: false
    t.string   "first_name",                                        null: false
    t.string   "first_name_kana",                                   null: false
    t.string   "last_name",                                         null: false
    t.string   "last_name_kana",                                    null: false
    t.string   "city",                                              null: false
    t.string   "address",                                           null: false
    t.string   "building"
    t.string   "email",                                default: "", null: false
    t.string   "encrypted_password",                   default: "", null: false
    t.string   "reset_password_token"
    t.text     "telephone",              limit: 65535
    t.text     "zip_code",               limit: 65535,              null: false
    t.integer  "birth_year",                                        null: false
    t.integer  "birth_month",                                       null: false
    t.integer  "birth_day",                                         null: false
    t.integer  "point_amount"
    t.integer  "profit_amount"
    t.text     "user_icon",              limit: 65535
    t.text     "introduction",           limit: 65535
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "prefecture_id"
    t.string   "customer_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["prefecture_id"], name: "index_users_on_prefecture_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "brand_categories", "brands"
  add_foreign_key "brand_categories", "first_categories"
  add_foreign_key "brands", "first_categories"
  add_foreign_key "communications", "items"
  add_foreign_key "communications", "order_statuses"
  add_foreign_key "communications", "users"
  add_foreign_key "flags", "items"
  add_foreign_key "flags", "users"
  add_foreign_key "item_images", "items"
  add_foreign_key "items", "brands"
  add_foreign_key "items", "conditions"
  add_foreign_key "items", "delivery_charges"
  add_foreign_key "items", "delivery_dates"
  add_foreign_key "items", "delivery_ways"
  add_foreign_key "items", "first_categories"
  add_foreign_key "items", "order_statuses"
  add_foreign_key "items", "prefectures"
  add_foreign_key "items", "second_categories"
  add_foreign_key "items", "sizes"
  add_foreign_key "items", "third_categories"
  add_foreign_key "items", "users"
  add_foreign_key "likes", "items"
  add_foreign_key "likes", "users"
  add_foreign_key "orders", "items"
  add_foreign_key "orders", "prefectures"
  add_foreign_key "orders", "users"
  add_foreign_key "payment_informations", "users"
  add_foreign_key "points", "point_statuses"
  add_foreign_key "points", "users"
  add_foreign_key "profits", "items"
  add_foreign_key "profits", "users"
  add_foreign_key "rate_counts", "items"
  add_foreign_key "rate_counts", "rates"
  add_foreign_key "rate_counts", "users"
  add_foreign_key "second_categories", "first_categories"
  add_foreign_key "second_categories", "size_categories"
  add_foreign_key "sizes", "size_categories"
  add_foreign_key "third_categories", "second_categories"
  add_foreign_key "users", "prefectures"
end
