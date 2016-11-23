class Review < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :mobile, optional: true
  has_many :comments, as: :commentable, dependent: :destroy

  ratyrate_rateable "original_score"

  scope :with_ratings, ->{includes(:rate_average_without_dimension).order("rating_caches.avg desc")}

  has_attached_file :image, styles: { medium: "730x230>", thumb: "350x150>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  ATTRIBUTES_PARAMS = [:mobile_id, :title, :content, :user_id, :image]

end
