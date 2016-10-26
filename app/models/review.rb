class Review < ApplicationRecord
  belongs_to :users
  
  has_many :rates
  has_many :comments
  has_many :mobile_reviews
end
