class Rate < ApplicationRecord
  belongs_to :users
  belongs_to :review
end
