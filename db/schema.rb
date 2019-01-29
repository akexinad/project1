ActiveRecord::Schema.define(version: 2019_01_21_041348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favourites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "thinker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields_theories", id: false, force: :cascade do |t|
    t.integer "field_id"
    t.integer "theory_id"
  end

  create_table "theories", force: :cascade do |t|
    t.text "name"
    t.integer "thinker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thinkers", force: :cascade do |t|
    t.text "name"
    t.date "birth"
    t.date "death"
    t.text "nationality"
    t.text "era"
    t.text "image"
    t.text "quote"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "password_digest"
  end

end
