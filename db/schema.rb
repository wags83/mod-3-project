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

ActiveRecord::Schema.define(version: 2020_03_25_023800) do

  create_table "all_data", id: false, force: :cascade do |t|
    t.text "Province/State"
    t.text "Country/Region"
    t.text "Last Update"
    t.text "Confirmed"
    t.text "Deaths"
    t.text "Recovered"
    t.text "Latitude"
    t.text "Longitude"
  end

  create_table "cases", id: false, force: :cascade do |t|
    t.text "Province/State"
    t.text "Country/Region"
    t.text "Lat"
    t.text "Long"
    t.text "1/22/20"
    t.text "1/23/20"
    t.text "1/24/20"
    t.text "1/25/20"
    t.text "1/26/20"
    t.text "1/27/20"
    t.text "1/28/20"
    t.text "1/29/20"
    t.text "1/30/20"
    t.text "1/31/20"
    t.text "2/1/20"
    t.text "2/2/20"
    t.text "2/3/20"
    t.text "2/4/20"
    t.text "2/5/20"
    t.text "2/6/20"
    t.text "2/7/20"
    t.text "2/8/20"
    t.text "2/9/20"
    t.text "2/10/20"
    t.text "2/11/20"
    t.text "2/12/20"
    t.text "2/13/20"
    t.text "2/14/20"
    t.text "2/15/20"
    t.text "2/16/20"
    t.text "2/17/20"
    t.text "2/18/20"
    t.text "2/19/20"
    t.text "2/20/20"
    t.text "2/21/20"
    t.text "2/22/20"
    t.text "2/23/20"
    t.text "2/24/20"
    t.text "2/25/20"
    t.text "2/26/20"
    t.text "2/27/20"
    t.text "2/28/20"
    t.text "2/29/20"
    t.text "3/1/20"
    t.text "3/2/20"
    t.text "3/3/20"
    t.text "3/4/20"
    t.text "3/5/20"
    t.text "3/6/20"
    t.text "3/7/20"
    t.text "3/8/20"
    t.text "3/9/20"
    t.text "3/10/20"
    t.text "3/11/20"
    t.text "3/12/20"
    t.text "3/13/20"
    t.text "3/14/20"
    t.text "3/15/20"
    t.text "3/16/20"
    t.text "3/17/20"
    t.text "3/18/20"
    t.text "3/19/20"
    t.text "3/20/20"
    t.text "3/21/20"
    t.text "3/22/20"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "days", force: :cascade do |t|
    t.integer "country_id"
    t.integer "cases"
    t.integer "deaths"
    t.integer "recovered"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_days_on_country_id"
  end

  create_table "deaths", id: false, force: :cascade do |t|
    t.text "Province/State"
    t.text "Country/Region"
    t.text "Lat"
    t.text "Long"
    t.text "1/22/20"
    t.text "1/23/20"
    t.text "1/24/20"
    t.text "1/25/20"
    t.text "1/26/20"
    t.text "1/27/20"
    t.text "1/28/20"
    t.text "1/29/20"
    t.text "1/30/20"
    t.text "1/31/20"
    t.text "2/1/20"
    t.text "2/2/20"
    t.text "2/3/20"
    t.text "2/4/20"
    t.text "2/5/20"
    t.text "2/6/20"
    t.text "2/7/20"
    t.text "2/8/20"
    t.text "2/9/20"
    t.text "2/10/20"
    t.text "2/11/20"
    t.text "2/12/20"
    t.text "2/13/20"
    t.text "2/14/20"
    t.text "2/15/20"
    t.text "2/16/20"
    t.text "2/17/20"
    t.text "2/18/20"
    t.text "2/19/20"
    t.text "2/20/20"
    t.text "2/21/20"
    t.text "2/22/20"
    t.text "2/23/20"
    t.text "2/24/20"
    t.text "2/25/20"
    t.text "2/26/20"
    t.text "2/27/20"
    t.text "2/28/20"
    t.text "2/29/20"
    t.text "3/1/20"
    t.text "3/2/20"
    t.text "3/3/20"
    t.text "3/4/20"
    t.text "3/5/20"
    t.text "3/6/20"
    t.text "3/7/20"
    t.text "3/8/20"
    t.text "3/9/20"
    t.text "3/10/20"
    t.text "3/11/20"
    t.text "3/12/20"
    t.text "3/13/20"
    t.text "3/14/20"
    t.text "3/15/20"
    t.text "3/16/20"
    t.text "3/17/20"
    t.text "3/18/20"
    t.text "3/19/20"
    t.text "3/20/20"
    t.text "3/21/20"
    t.text "3/22/20"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "country_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "latest_data", force: :cascade do |t|
    t.integer "country_id"
    t.integer "cases"
    t.integer "deaths"
    t.integer "recovered"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_latest_data_on_country_id"
  end

  create_table "recovered", id: false, force: :cascade do |t|
    t.text "Province/State"
    t.text "Country/Region"
    t.text "Lat"
    t.text "Long"
    t.text "1/22/20"
    t.text "1/23/20"
    t.text "1/24/20"
    t.text "1/25/20"
    t.text "1/26/20"
    t.text "1/27/20"
    t.text "1/28/20"
    t.text "1/29/20"
    t.text "1/30/20"
    t.text "1/31/20"
    t.text "2/1/20"
    t.text "2/2/20"
    t.text "2/3/20"
    t.text "2/4/20"
    t.text "2/5/20"
    t.text "2/6/20"
    t.text "2/7/20"
    t.text "2/8/20"
    t.text "2/9/20"
    t.text "2/10/20"
    t.text "2/11/20"
    t.text "2/12/20"
    t.text "2/13/20"
    t.text "2/14/20"
    t.text "2/15/20"
    t.text "2/16/20"
    t.text "2/17/20"
    t.text "2/18/20"
    t.text "2/19/20"
    t.text "2/20/20"
    t.text "2/21/20"
    t.text "2/22/20"
    t.text "2/23/20"
    t.text "2/24/20"
    t.text "2/25/20"
    t.text "2/26/20"
    t.text "2/27/20"
    t.text "2/28/20"
    t.text "2/29/20"
    t.text "3/1/20"
    t.text "3/2/20"
    t.text "3/3/20"
    t.text "3/4/20"
    t.text "3/5/20"
    t.text "3/6/20"
    t.text "3/7/20"
    t.text "3/8/20"
    t.text "3/9/20"
    t.text "3/10/20"
    t.text "3/11/20"
    t.text "3/12/20"
    t.text "3/13/20"
    t.text "3/14/20"
    t.text "3/15/20"
    t.text "3/16/20"
    t.text "3/17/20"
    t.text "3/18/20"
    t.text "3/19/20"
    t.text "3/20/20"
    t.text "3/21/20"
    t.text "3/22/20"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_regions_on_country_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end