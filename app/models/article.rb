class Article < ApplicationRecord
	belongs_to :user
	has_many :comments
	mount_uploaders :image, AvatarUploader


end
