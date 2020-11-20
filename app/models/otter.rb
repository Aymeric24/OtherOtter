class Otter < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings

  validates :name, :address, presence: true
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
