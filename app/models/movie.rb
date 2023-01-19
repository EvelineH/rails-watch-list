class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_error
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
  before_destroy :check_for_bookmarks

  private

  def check_for_bookmarks
    if bookmarks.any?
      # errors.add(:base, "Can't remove movie with bookmarks")
      throw(:abort)
    end
  end
end
