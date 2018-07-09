class Article < ApplicationRecord
	belongs_to :user
	has_many :comments

	include PgSearch
  	multisearchable :against => [:title, :content, :tag]

  	def self.rebuild_pg_search_documents
    	find_each { |record| record.update_pg_search_document }
	end

end
