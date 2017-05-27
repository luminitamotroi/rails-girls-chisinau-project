class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.belongs_to :user
      t.belongs_to :case

      t.string :title
      t.string :domain
      t.text :body
      t.string :external_link

      t.timestamps null: false
    end
  end
end