class AddUserToFreepost < ActiveRecord::Migration[5.0]
  def change
    add_reference :freeposts, :user, foreign_key: true
  end
end
