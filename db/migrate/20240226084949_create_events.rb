class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :comment
      t.string :location
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :all_day, default: false
      t.timestamps
    end
  end
end
