class Answer < ApplicationRecord
	belongs_to :query
	belongs_to :user
	belongs_to :lawyer
end
