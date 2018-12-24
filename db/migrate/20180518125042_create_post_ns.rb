class CreatePostNs < ActiveRecord::Migration[5.0]
  def change
    create_table :post_ns do |t|
      t.date :date
      t.string :title
      t.string :etc
      t.integer :user_id
      t.integer :total_price
      t.integer :member
      t.timestamps
    end
  end
end
