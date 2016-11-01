class AddImageToReviews < ActiveRecord::Migration[5.0]
  def change
    add_attachment :reviews, :image
  end
end
