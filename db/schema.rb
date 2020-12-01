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

ActiveRecord::Schema.define(version: 2020_11_16_164916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "adoptions", force: :cascade do |t|
    t.date "start_date", null: false
    t.string "end_date_date"
    t.bigint "dog_id", null: false
    t.bigint "person_id", null: false
    t.string "status", null: false
    t.string "return_reason"
    t.string "rejection_reason"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dog_id"], name: "index_adoptions_on_dog_id"
    t.index ["person_id"], name: "index_adoptions_on_person_id"
  end

  create_table "breeds", force: :cascade do |t|
    t.string "breed_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "breeds_dogs", force: :cascade do |t|
    t.bigint "dog_id", null: false
    t.bigint "breed_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["breed_id"], name: "index_breeds_dogs_on_breed_id"
    t.index ["dog_id"], name: "index_breeds_dogs_on_dog_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name", null: false
    t.date "date_of_birth"
    t.bigint "size_id", null: false
    t.boolean "is_vaccinated", null: false
    t.boolean "is_fixed", null: false
    t.boolean "is_male", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["size_id"], name: "index_dogs_on_size_id"
  end

  create_table "dogs_volunteers", force: :cascade do |t|
    t.bigint "dog_id", null: false
    t.bigint "volunteer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dog_id"], name: "index_dogs_volunteers_on_dog_id"
    t.index ["volunteer_id"], name: "index_dogs_volunteers_on_volunteer_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone_number", null: false
    t.string "email"
    t.string "address"
    t.boolean "is_banned"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "size_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone_number", null: false
    t.string "email"
    t.string "address"
    t.boolean "is_active", null: false
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "adoptions", "dogs"
  add_foreign_key "adoptions", "people"
  add_foreign_key "breeds_dogs", "breeds"
  add_foreign_key "breeds_dogs", "dogs"
  add_foreign_key "dogs", "sizes"
  add_foreign_key "dogs_volunteers", "dogs"
  add_foreign_key "dogs_volunteers", "volunteers"
end
