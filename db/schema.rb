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

ActiveRecord::Schema.define(version: 2020_08_31_094159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "qwester_answer_stores", force: :cascade do |t|
    t.string "session_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "preserved"
  end

  create_table "qwester_answer_stores_answers", id: false, force: :cascade do |t|
    t.integer "answer_id"
    t.integer "answer_store_id"
  end

  create_table "qwester_answer_stores_questionnaires", id: false, force: :cascade do |t|
    t.integer "questionnaire_id"
    t.integer "answer_store_id"
  end

  create_table "qwester_answers", force: :cascade do |t|
    t.integer "question_id"
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "position"
    t.float "weighting", default: 0.0
  end

  create_table "qwester_answers_rule_sets", id: false, force: :cascade do |t|
    t.integer "answer_id"
    t.integer "rule_set_id"
  end

  create_table "qwester_ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.integer "assetable_id"
    t.string "assetable_type", limit: 30
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assetable_type", "assetable_id"], name: "qwester_idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "qwester_idx_ckeditor_assetable_type"
  end

  create_table "qwester_presentation_questionnaires", force: :cascade do |t|
    t.integer "questionnaire_id"
    t.integer "presentation_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "position"
  end

  create_table "qwester_presentations", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "default"
  end

  create_table "qwester_questionnaires", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "button_image_file_name"
    t.string "button_image_content_type"
    t.integer "button_image_file_size"
    t.datetime "button_image_updated_at"
    t.boolean "must_complete"
  end

  create_table "qwester_questionnaires_questions", force: :cascade do |t|
    t.integer "questionnaire_id"
    t.integer "question_id"
    t.integer "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qwester_questions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.integer "depth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ref"
    t.boolean "multi_answer"
  end

  create_table "qwester_rule_sets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "rule"
    t.string "link_text"
    t.string "presentation"
  end

end
