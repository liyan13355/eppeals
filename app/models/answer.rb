class Answer < ApplicationRecord
	belongs_to :query, counter_cache: true
	belongs_to :user
end
