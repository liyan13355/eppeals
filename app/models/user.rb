class User < ApplicationRecord
  include Clearance::User
  enum role:[:user, :moderator, :superadmin]
  has_many :comments
  has_many :queries
end
