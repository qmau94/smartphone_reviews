class AddSmallInfoToMobiles < ActiveRecord::Migration[5.0]
  def change
    add_column :mobiles, :thickness, :string
    add_column :mobiles, :os, :string
    add_column :mobiles, :storage, :string
    add_column :mobiles, :display, :string
    add_column :mobiles, :camera, :string
    add_column :mobiles, :ram, :string
    add_column :mobiles, :battery_spec, :string

  end
end
