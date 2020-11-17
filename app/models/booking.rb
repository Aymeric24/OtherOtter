class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :otter

  validates :beginning_date, uniqueness: true, presence: true
  validates :ending_date, uniqueness: true, presence: true
end
