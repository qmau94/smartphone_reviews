class AddImageToMobiles < ActiveRecord::Migration[5.0]
  def change
    add_attachment :mobiles, :image
  end
end
