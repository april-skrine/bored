class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :img_url
      t.text :description
      t.boolean :favorite
      t.integer :likes
      t.float :rating
      t.boolean :most_popular
      t.references :mood, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
