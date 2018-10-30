class Paper < ApplicationRecord
  has_and_belongs_to_many :authors

  scope :held_at, ->(param_year) { where("year == ?", param_year) if param_year.present? }

  validates :title, :venue, :year, presence: true
  validates :year, numericality: { only_integer: true }
end
