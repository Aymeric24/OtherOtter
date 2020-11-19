class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :otter

  validates :beginning_date, presence: true
  validates :ending_date, presence: true
  validate :date_is_ok?

  def date_is_ok?
    if beginning_date > ending_date
      errors.add(ending_date: "Ending date can't be inferior to beginning date")
    end
  end
end
