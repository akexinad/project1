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

ActiveRecord::Schema.define(version: 2019_01_19_022650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
