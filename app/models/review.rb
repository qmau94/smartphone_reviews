class Review < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :mobile, optional: true
end
