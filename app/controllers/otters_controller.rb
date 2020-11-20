class OttersController < ApplicationController
  def index
    # @otters = Otters.all
    if params[:query].present?
      @otters = policy_scope(Otter).near("#{params[:query]}", "10")
    else
      @otters = policy_scope(Otter).order(created_at: :desc)
    end
    @markers = @otters.geocoded.map do |otter| {
      lat: otter.latitude,
      lng: otter.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { otter: otter }),
      image_url: helpers.asset_url('logo.png'),
      otter_id: otter.id
    }
    end
  end

  # def index
  #   # @otters = Otter.all
  #   @otters = policy_scope(Otter).order(created_at: :desc)
  # end

  def show
    @otter = Otter.find(params[:id])
    @booking = Booking.new
    authorize @otter
    @bookings = Booking.where(otter_id: @otter.id)
    @bookings_dates = @bookings.map do |booking| {
      from: booking.beginning_date,
      to: booking.ending_date
    }
    end
  end

  def new
    @otter = Otter.new
    authorize @otter
  end

  def create
    @otter = Otter.new(otter_params)
    authorize @otter
    @otter.user = current_user
    if @otter.save
      redirect_to otter_path(@otter)
    else
      render :new
    end
  end

  def edit
    @otter = Otter.find(params[:id])
    authorize @otter
  end

  def update
    @otter = Otter.find(params[:id])
    authorize @otter
    @otter.update(otter_params)
    redirect_to otter_path(@otter)
  end

  def destroy
    @otter = Otter.find(params[:id])
    authorize @otter
    @otter.destroy
    redirect_to otters_path
  end

  private

  def otter_params
    params.require(:otter).permit(:name, :age, :rating, :personality, :address, :photo)
  end
end
