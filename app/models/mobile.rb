class Mobile < ApplicationRecord
	has_many :mobile_reviews
	has_many :mobile_brands
end
