class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  belongs_to :parent, class_name: 'Comment', optional: true
  has_many :comments, as: :commentable

  ATTRIBUTES_PARAMS = [:content, :user_id, :parrent_id, :commentable_type,
    :commentable_id]

  def review
    commentable.is_a?(Review) ? commentable : commentable.review
  end
end
