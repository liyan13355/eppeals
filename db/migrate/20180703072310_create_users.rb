class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :first_name, null: false
      t.string :last_name
      t.string :email, null: false
      t.date :birthday
      t.string :industry
      t.string :avatar 

      t.string :type_of_lawyer
      t.string :description
      t.string :education
      t.json :proof
      t.boolean :verified, default: false

      t.integer :role, default: 0
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
