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

ActiveRecord::Schema[7.0].define(version: 2023_04_24_003901) do
  create_table "authorities", force: :cascade do |t|
    t.string "name", null: false
    t.integer "region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_authorities_on_region_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name", null: false
    t.string "iso_4217"
    t.string "symbol"
    t.integer "authority_id", null: false
    t.date "issued_on"
    t.date "withdrawn_on"
    t.date "lapsed_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authority_id"], name: "index_currencies_on_authority_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "name", null: false
    t.string "full_name", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_features", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_features_masters", id: false, force: :cascade do |t|
    t.integer "master_id", null: false
    t.integer "master_feature_id", null: false
  end

  create_table "masters", force: :cascade do |t|
    t.integer "currency_id", null: false
    t.decimal "denomination", null: false
    t.string "pick"
    t.integer "overprint_currency_id"
    t.decimal "overprint_denomination"
    t.string "obverse"
    t.string "reverse"
    t.integer "printer_id"
    t.integer "material_id"
    t.integer "width"
    t.integer "height"
    t.date "printed_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "oversized"
    t.index "\"features_id\"", name: "index_masters_on_features_id"
    t.index ["currency_id"], name: "index_masters_on_currency_id"
    t.index ["material_id"], name: "index_masters_on_material_id"
    t.index ["overprint_currency_id"], name: "index_masters_on_overprint_currency_id"
    t.index ["printer_id"], name: "index_masters_on_printer_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "note_features", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "note_features_notes", id: false, force: :cascade do |t|
    t.integer "note_id", null: false
    t.integer "note_feature_id", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer "master_id", null: false
    t.integer "grade_id"
    t.string "notes"
    t.string "serial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"features_id\"", name: "index_notes_on_features_id"
    t.index ["grade_id"], name: "index_notes_on_grade_id"
    t.index ["master_id"], name: "index_notes_on_master_id"
  end

  create_table "printers", force: :cascade do |t|
    t.string "name", null: false
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_printers_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "short_name", null: false
    t.string "iso_3166"
    t.string "official_name"
    t.string "native_name"
    t.string "wikipedia_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "authorities", "regions"
  add_foreign_key "currencies", "authorities"
  add_foreign_key "master_features_masters", "master_features"
  add_foreign_key "master_features_masters", "masters"
  add_foreign_key "masters", "currencies"
  add_foreign_key "masters", "currencies", column: "overprint_currency_id"
  add_foreign_key "masters", "materials"
  add_foreign_key "masters", "printers"
  add_foreign_key "note_features_notes", "note_features"
  add_foreign_key "note_features_notes", "notes"
  add_foreign_key "notes", "grades"
  add_foreign_key "notes", "masters"
  add_foreign_key "printers", "regions"
end
