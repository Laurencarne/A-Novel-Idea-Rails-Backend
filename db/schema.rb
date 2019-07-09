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

ActiveRecord::Schema.define(version: 2019_07_07_091910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_orders", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_orders_on_book_id"
    t.index ["order_id"], name: "index_book_orders_on_order_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "google_id"
    t.string "title"
    t.string "subtitle"
    t.string "author"
    t.bigint "isbn"
    t.integer "price"
    t.string "image"
    t.string "publisher"
    t.string "description"
    t.string "snippet"
    t.string "genre"
    t.string "publishedDate"
    t.integer "pageCount"
    t.string "printType"
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_books", force: :cascade do |t|
    t.bigint "cart_id"
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_cart_books_on_book_id"
    t.index ["cart_id"], name: "index_cart_books_on_cart_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wish_books", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "wishlist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_wish_books_on_book_id"
    t.index ["wishlist_id"], name: "index_wish_books_on_wishlist_id"
  end

  create_table "wishlists", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wishlists_on_user_id"
  end

  add_foreign_key "book_orders", "books"
  add_foreign_key "book_orders", "orders"
  add_foreign_key "cart_books", "books"
  add_foreign_key "cart_books", "carts"
  add_foreign_key "carts", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "wish_books", "books"
  add_foreign_key "wish_books", "wishlists"
  add_foreign_key "wishlists", "users"
end
