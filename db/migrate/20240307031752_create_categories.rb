class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.references :event, null: false, foreign_key: true
      t.string :work
      t.string :friend
      t.string :themepark
      t.string :hobby
      t.string :other
      t.date :period
      t.timestamps
    end
  end
end
