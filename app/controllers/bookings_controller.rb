class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @otter = Otter.find(params[:otter_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @otter = Otter.find(params[:otter_id])
    @booking.otter = @otter
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:beginning_date, :ending_date, :status)
  end
end
