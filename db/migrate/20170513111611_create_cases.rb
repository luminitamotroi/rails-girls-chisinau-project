class CreateCases < ActiveRecord::Migration[5.0]
  def change
    create_table :cases do |t|
      t.string :image_link
    end
  end
end
