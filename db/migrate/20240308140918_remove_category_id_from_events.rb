class RemoveCategoryIdFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :category, foreign_key: true
  end
end
