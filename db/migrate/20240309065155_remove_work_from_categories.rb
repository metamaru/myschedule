class RemoveWorkFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :work, :string
    remove_column :categories, :friend, :string
    remove_column :categories, :themepark, :string
    remove_column :categories, :hobby, :string
    remove_column :categories, :other, :string
  end
end
