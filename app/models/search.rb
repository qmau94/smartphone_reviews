class Search < ApplicationRecord
  ATTRIBUTES_PARAMS = [:keywords, :mobile_brand_id, :minimum_price, :maximum_price,
    :minimum_rate, :maximum_rate]

  def mobiles
    @mobiles ||= find_mobiles
  end

  private
  def find_mobiles
    mobiles = Mobile.order :name
    mobiles = mobiles.where("name like ?", "%#{keywords}%") if keywords.present?
    mobiles = mobiles.where(mobile_brand_id: mobile_brand_id) if mobile_brand_id.present?
    mobiles = mobiles.where("price >= ?", minimum_price) if minimum_price.present?
    mobiles = mobiles.where("price <= ?", maximum_price) if maximum_price.present?
    mobiles
  end

end
