class AddUserIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :user, null: false, foreign_key: true unless column_exists?(:events, :user_id)
  end
end
