class AddUserIdToCases < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :user_id, :integer
  end
end
