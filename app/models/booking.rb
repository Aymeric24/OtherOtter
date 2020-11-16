class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :otter
end
