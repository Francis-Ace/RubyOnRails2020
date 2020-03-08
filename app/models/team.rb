class Team < ApplicationRecord
  has_many :players

  validates :name, :points, presence: true
  validates :points, numericality: { only_integer: true }
end
