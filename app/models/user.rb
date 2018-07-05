class User < ApplicationRecord
  include Clearance::User
  mount_uploader :avatar, AvatarUploader

  enum role:[:user, :superadmin, :lawyer]
  has_many :comments
  has_many :queries
  has_many :articles
end
