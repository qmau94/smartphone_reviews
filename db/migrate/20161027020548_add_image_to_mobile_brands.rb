class AddImageToMobileBrands < ActiveRecord::Migration[5.0]
  def change
    add_attachment  :mobile_brands, :image
  end
end
