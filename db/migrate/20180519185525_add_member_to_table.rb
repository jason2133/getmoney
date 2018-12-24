class AddMemberToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :member, :integer
  end
end
