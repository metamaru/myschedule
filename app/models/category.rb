class Category < ApplicationRecord
  belongs_to :event

  validates :name, presence: true, uniqueness: true
end
