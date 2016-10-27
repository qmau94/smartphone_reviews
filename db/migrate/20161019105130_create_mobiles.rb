class CreateMobiles < ActiveRecord::Migration[5.0]
  def change
    create_table :mobiles do |t|
      t.string :name
      t.string :description
      t.date :created_at
      t.date :updated_at
      t.references :mobile_brand, index: true


      t.timestamps
    end
  end
end
