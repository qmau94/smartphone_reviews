class Review < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :mobile, optional: true
  has_many :comments

  has_attached_file :image, styles: { medium: "730x230>", thumb: "350x150>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  ATTRIBUTES_PARAMS = [:mobile_id, :content, :user_id, :image]

end
