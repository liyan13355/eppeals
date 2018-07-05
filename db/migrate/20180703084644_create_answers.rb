class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|

      t.timestamps
      t.integer :query_id
      t.integer :user_id
      t.string :content
    end
  end
end
