class CreateMobileReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :mobile_reviews do |t|
      t.string :description
      t.references :review, foreign_key: true
      t.references :mobile, foreign_key: true

      t.timestamps
    end
  end
end
