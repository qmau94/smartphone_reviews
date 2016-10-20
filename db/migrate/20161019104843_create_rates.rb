class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.integer :point
      t.references :users, foreign_key: true
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
