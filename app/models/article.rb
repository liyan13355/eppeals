class Article < ApplicationRecord
	belongs_to :lawyer
	has_many :comments

end
