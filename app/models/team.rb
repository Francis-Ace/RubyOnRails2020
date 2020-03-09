class Team < ApplicationRecord
  has_many :players
  has_many :coaches

  validates :name, :points, presence: true
  validates :points, numericality: { only_integer: true }
end
