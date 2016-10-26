class CreateMobileBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :mobile_brands do |t|
      t.string :name
      t.string :description
      t.references :mobile, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
