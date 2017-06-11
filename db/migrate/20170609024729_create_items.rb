class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :product
      t.string :product_category
      t.string :origin
      t.string :format
      t.string :price
      t.string :quantity
      t.string :image

      t.timestamps

    end
  end
end
