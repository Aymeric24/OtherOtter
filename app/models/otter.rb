class Otter < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings

  validates :name, presence: true
end
