class MobileBrand < ApplicationRecord
  has_many :mobiles

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  ATTRIBUTES_PARAMS=[:name, :description, :image]
end
