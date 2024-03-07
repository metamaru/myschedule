class Event < ApplicationRecord
  belongs_to :user
  has_one :category

  with_options presence: true do
    validates :user_id
    validates :title
  end
end
