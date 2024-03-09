class Event < ApplicationRecord
  belongs_to :user
  belongs_to :category

  with_options presence: true do
    validates :user_id
    validates :title
    validates :category_id
  end
end
