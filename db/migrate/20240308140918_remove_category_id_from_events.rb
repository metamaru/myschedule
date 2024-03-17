class RemoveCategoryIdFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :category_id
  end
end
