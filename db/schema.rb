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

ActiveRecord::Schema.define(version: 2021_06_08_120119) do

  create_table "properties", force: :cascade do |t|
    t.text "property"
    t.integer "rent"
    t.text "address"
    t.integer "building"
    t.text "remarks"
  end

  create_table "railways", force: :cascade do |t|
    t.text "railway"
    t.text "station"
    t.integer "distance"
    t.integer "property_id"
    t.index ["property_id"], name: "index_railways_on_property_id"
  end

end
