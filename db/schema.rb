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

ActiveRecord::Schema.define(version: 2019_12_01_093057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educator_profile_student_profiles", force: :cascade do |t|
    t.bigint "student_profiles_id"
    t.bigint "educator_profiles_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["educator_profiles_id"], name: "index_educator_profile_student_profiles_on_educator_profiles_id"
    t.index ["student_profiles_id"], name: "index_educator_profile_student_profiles_on_student_profiles_id"
  end

  create_table "educator_profiles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "photo_url"
    t.bigint "educators_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["educators_id"], name: "index_educator_profiles_on_educators_id"
  end

  create_table "educators", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_educators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_educators_on_reset_password_token", unique: true
  end

  create_table "podcasts", force: :cascade do |t|
    t.bigint "educator_profiles_id"
    t.string "podcast_title"
    t.string "category"
    t.string "date"
    t.text "podcast_photo"
    t.integer "episode_no"
    t.string "episode_name"
    t.string "actual_length"
    t.text "url"
    t.text "description"
    t.string "age_group"
    t.string "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["educator_profiles_id"], name: "index_podcasts_on_educator_profiles_id"
  end

  create_table "shops", id: :serial, force: :cascade do |t|
    t.text "name"
  end

  create_table "student_profile_podcasts", force: :cascade do |t|
    t.bigint "student_profiles_id"
    t.bigint "podcasts_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["podcasts_id"], name: "index_student_profile_podcasts_on_podcasts_id"
    t.index ["student_profiles_id"], name: "index_student_profile_podcasts_on_student_profiles_id"
  end

  create_table "student_profiles", force: :cascade do |t|
    t.string "name"
    t.string "age_group"
    t.bigint "students_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["students_id"], name: "index_student_profiles_on_students_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

end
