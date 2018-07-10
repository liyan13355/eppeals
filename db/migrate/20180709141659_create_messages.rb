class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
			t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.integer "sender_id"
	    t.integer "recipient_id"
	    t.text "content"
    end
  end
end
