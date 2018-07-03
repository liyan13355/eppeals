class CreateQueries < ActiveRecord::Migration[5.2]
  def change
    create_table :queries do |t|

      t.timestamps
      t.string :topic
      t.string :question
      t.string :description
      t.integer :user_id
    end
  end
end
