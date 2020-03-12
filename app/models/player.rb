class Player < ApplicationRecord
  belongs_to :team
  has_many :appointments
  has_many :coach, through: :appointments

  validates :name, presence: true
end
