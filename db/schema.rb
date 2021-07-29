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

ActiveRecord::Schema.define(version: 2021_07_29_121756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_sessions", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.bigint "venue_id", null: false
    t.bigint "session_slot_id", null: false
    t.date "session_date", null: false
    t.decimal "price", precision: 15, scale: 2
    t.index ["movie_id"], name: "index_movie_sessions_on_movie_id"
    t.index ["session_slot_id"], name: "index_movie_sessions_on_session_slot_id"
    t.index ["venue_id", "session_slot_id", "session_date"], name: "venue_session_index", unique: true
    t.index ["venue_id"], name: "index_movie_sessions_on_venue_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "imdb_id", limit: 50, null: false
    t.index ["imdb_id"], name: "index_movies_on_imdb_id"
  end

  create_table "session_slots", force: :cascade do |t|
    t.string "name", limit: 150, null: false
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string "name", limit: 150, null: false
    t.string "id_name", limit: 50, null: false
  end

  add_foreign_key "movie_sessions", "movies"
  add_foreign_key "movie_sessions", "session_slots"
  add_foreign_key "movie_sessions", "venues"
end
