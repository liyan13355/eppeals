class Query < ApplicationRecord
	belongs_to :user
	has_many :answers
	scope :featured, -> {order('answers_count DESC')}
end
  