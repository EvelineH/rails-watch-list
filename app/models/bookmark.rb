class Bookmark < ApplicationRecord
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  belongs_to :list
  belongs_to :movie
end
