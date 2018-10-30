class Paper < ApplicationRecord
  validates :title, :venue, :year, presence: true
  validates :year, numericality: { only_integer: true }
end
