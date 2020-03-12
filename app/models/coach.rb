class Coach < ApplicationRecord
  belongs_to :team
  has_many :appointments
  has_many :player, through: :appointments

  validates :name, presence: true
end
