class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url_1
      t.string :image_url_2
      t.string :image_url_3
      t.string :image_url_4
      t.string :image_url_5
      t.boolean :is_featured
      t.boolean :is_sold_out
      t.string :collection_date

      t.timestamps
    end
  end
end
