class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.string :item
      t.integer :EA
      t.integer :price
      t.integer :total
      t.string :etc
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
