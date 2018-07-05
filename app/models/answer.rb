class Answer < ApplicationRecord
	belongs_to :query
	belongs_to :user
	
end
