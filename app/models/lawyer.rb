class Lawyer < ApplicationRecord
  include Clearance::User
  has_many :articles
  has_many :comments
end
