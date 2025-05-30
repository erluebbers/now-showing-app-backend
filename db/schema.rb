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

ActiveRecord::Schema.define(version: 2022_03_15_134933) do

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.date "opening_date"
    t.string "rating"
  end

  create_table "showings", force: :cascade do |t|
    t.integer "theater_id"
    t.integer "movie_id"
  end

  create_table "theaters", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "number_of_screens"
  end

end
