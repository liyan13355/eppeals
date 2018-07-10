class Query < ApplicationRecord
	belongs_to :user
	has_many :answers
	scope :featured, -> {order('answers_count DESC')}

	include PgSearch
  	multisearchable :against => [:topic, :question, :description]

  	def self.rebuild_pg_search_documents
    	find_each { |record| record.update_pg_search_document }
	end
end
  