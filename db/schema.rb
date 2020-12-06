# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_06_211401) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
  end

  create_table "foursomes", force: :cascade do |t|
    t.datetime "teeTime"
  end

  create_table "golfers", force: :cascade do |t|
    t.string "initials"
    t.integer "foursome_id"
    t.index ["foursome_id"], name: "index_golfers_on_foursome_id"
  end

  create_table "holes", force: :cascade do |t|
    t.integer "number"
    t.integer "yards"
    t.integer "par"
    t.integer "score"
    t.integer "course_id", null: false
    t.index ["course_id"], name: "index_holes_on_course_id"
  end

  create_table "wolf_games", force: :cascade do |t|
    t.decimal "stakes"
    t.integer "foursome_id", null: false
    t.integer "course_id", null: false
    t.index ["course_id"], name: "index_wolf_games_on_course_id"
    t.index ["foursome_id"], name: "index_wolf_games_on_foursome_id"
  end

  add_foreign_key "golfers", "foursomes"
  add_foreign_key "holes", "courses"
  add_foreign_key "wolf_games", "courses"
  add_foreign_key "wolf_games", "foursomes"
end
