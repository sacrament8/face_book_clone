ActiveRecord::Schema.define(version: 20190306045104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "picture_and_contents", force: :cascade do |t|
    t.text "image"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_picture_and_contents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "picture_and_contents", "users"
end
