class CreateChecks < ActiveRecord::Migration[5.0]
  def change
    create_table :checks do |t|
      t.string :name
      t.integer :money
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
