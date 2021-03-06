class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit()
  end
end
