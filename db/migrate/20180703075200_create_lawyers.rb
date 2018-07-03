class CreateLawyers < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyers do |t|
    	t.timestamps null: false
    	t.string :first_name, null: false
    	t.string :last_name, null: false
    	t.string :email, null: false
    	t.string :type, null: false
    	t.string :avatar
    	t.date :birthday, null: false
    	t.string :description
    	t.string :education
    	t.json :proof, null: false
    	t.boolean :verified, default: false
    	t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
    end
	    add_index :lawyers, :email
	    add_index :lawyers, :remember_token
  end
end
