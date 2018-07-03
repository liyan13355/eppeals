class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :lawyer
	belongs_to :article
	
end
