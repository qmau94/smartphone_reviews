class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review

  ATTRIBUTES_PARAMS = [:content, :user_id]
end
