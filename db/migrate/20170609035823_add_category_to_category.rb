class AddCategoryToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :category, :string
  end
end
