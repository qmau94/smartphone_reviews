class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.string :mobile
      t.datetime :date
      t.references :users, foreign_key: true
      t.references :mobile, foreign_key: true

      t.timestamps
    end
  end
end
