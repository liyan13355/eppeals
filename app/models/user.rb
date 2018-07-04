class User < ApplicationRecord
  include Clearance::User
  enum role:[:user, :superadmin, :lawyer]
  has_many :comments
  has_many :queries
end
