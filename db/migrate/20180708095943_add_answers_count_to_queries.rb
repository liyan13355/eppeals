class AddAnswersCountToQueries < ActiveRecord::Migration[5.2]
  def change
  	add_column :queries, :answers_count, :integer, default: 0
  end
end
