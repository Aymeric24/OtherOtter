class UsersController < ApplicationController
  def dashboard
    skip_authorization
    @bookings_as_renter = current_user.bookings
    @otters = current_user.otters
    @bookings_as_owner = Booking.where(otter: @otters)
  end
end
