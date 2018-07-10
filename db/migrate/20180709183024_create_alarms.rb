class CreateAlarms < ActiveRecord::Migration[5.2]
  def change
    create_table :alarms do |t|
    	t.string "subject", null: false
	    t.string "description", null: false
	    t.json "files"
	    t.boolean "notify_employer"
	     t.boolean "notify_ic"
	    t.boolean "notify_wou"
	    t.references "user"
      t.timestamps
    end
  end
end
