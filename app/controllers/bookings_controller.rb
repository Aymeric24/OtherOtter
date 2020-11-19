class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @otter = Otter.find(params[:otter_id])
    authorize @otter
  end

  def create
    @booking = Booking.new(booking_params)
    @otter = Otter.find(params[:otter_id])
    authorize @otter
    @booking.otter = @otter
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to otter_path(@otter), alert: "Try again"
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

  def accept
    @booking = Booking.find(params[:booking_id])
    @otter = @booking.otter
    authorize @otter
    @booking.update(status: 'Accepted')
    redirect_to dashboard_path
  end

  def refuse
    @booking = Booking.find(params[:booking_id])
    @otter = @booking.otter
    authorize @otter
    @booking.update(status: 'Refused')
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:beginning_date, :ending_date, :status)
  end
end
