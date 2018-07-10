class Alarm < ApplicationRecord
	belongs_to :user
	has_many :bookings
	mount_uploader :image, ImageUploader

	CATEGORY_LIST = ["Wages", "Leave", "Harassment","Others"]
end