class CreateCheckNs < ActiveRecord::Migration[5.0]
  def change
    create_table :check_ns do |t|
      t.string :name
      t.integer :moeny
      t.references :PostN, foreign_key: true

      t.timestamps
    end
  end
end
