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

ActiveRecord::Schema.define(version: 2021_01_04_205435) do

  create_table "class_sessions", force: :cascade do |t|
    t.integer "class_id"
  end

  create_table "classes", force: :cascade do |t|
    t.string "instructor"
    t.string "time"
    t.string "location"
    t.string "duration"
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "member_id"
    t.integer "class_session_id"
  end

  create_table "favorite_classes", force: :cascade do |t|
    t.integer "member_id"
    t.integer "class_id"
  end

  create_table "gym_classes", force: :cascade do |t|
    t.integer "gym_id"
    t.integer "class_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "location"
    t.string "email"
    t.string "phone"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "email"
    t.string "password_digest"
  end

end
