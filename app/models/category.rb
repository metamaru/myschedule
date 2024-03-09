class Category < ApplicationRecord
  has_one :event

  validates :name, presence: true, uniqueness: true
end
