class Article < ApplicationRecord
	belongs_to :user
	has_many :comments

	include PgSearch
	pg_search_scope :search_by_title, against: [:title],
	 using: {
      tsearch: {
        prefix: true
      }
    }
end
