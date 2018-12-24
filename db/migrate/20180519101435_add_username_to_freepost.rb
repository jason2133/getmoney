class AddUsernameToFreepost < ActiveRecord::Migration[5.0]
  def change
    add_column :freeposts, :username, :string
  end
end
