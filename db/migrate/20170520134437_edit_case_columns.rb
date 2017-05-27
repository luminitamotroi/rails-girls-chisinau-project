class EditCaseColumns < ActiveRecord::Migration
  def change
    add_column :cases, :body, :text
    rename_column :cases, :image_link, :title
  end
end