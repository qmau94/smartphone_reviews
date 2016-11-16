class CreateSearch < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :mobile_brand_id
      t.float :minimum_price
      t.float :maximum_price
      t.float :minimum_rate
      t.float :maximum_rate
    end
  end
end
