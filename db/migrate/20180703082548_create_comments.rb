class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.timestamps
      t.string :content
      t.integer :user_id
      t.integer :article_id
    end
  end
end
