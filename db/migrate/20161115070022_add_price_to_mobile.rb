class AddPriceToMobile < ActiveRecord::Migration[5.0]
  def change
    add_column :mobiles, :price, :float
  end
end
