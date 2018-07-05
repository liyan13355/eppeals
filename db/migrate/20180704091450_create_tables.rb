class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|

    create_table "answers", force: :cascade do |t|
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.references "query_id"
	    t.references "user_id"
	    t.string "content"
	  end

	  create_table "articles", force: :cascade do |t|
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.string "title"
	    t.string "content"
	    t.string "tag"
	    t.references "user_id"
	  end

	  create_table "comments", force: :cascade do |t|
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.string "content"
	    t.references "user_id"
	    t.references"article_id"
	  end

	  create_table "users", force: :cascade do |t|
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.string "first_name", null: false
	    t.string "last_name"
	    t.string "email", null: false
	    t.date "birthday"
	    t.string "industry"
	    t.string "avatar"
	    t.string "type_of_lawyer"
	    t.string "description"
	    t.string "education"
	    t.json "proof"
	    t.boolean "verified", default: false
	    t.integer "role", default: 0
	    t.string "encrypted_password", limit: 128, null: false
	    t.string "confirmation_token", limit: 128
	    t.string "remember_token", limit: 128, null: false
	    t.index ["email"], name: "index_users_on_email"
	    t.index ["remember_token"], name: "index_users_on_remember_token"
	  end

	  create_table "queries", force: :cascade do |t|
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.string "topic"
	    t.string "question"
	    t.string "description"
	    t.references "user_id"
	  end

    end
  end
end
