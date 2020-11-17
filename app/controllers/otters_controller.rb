class OttersController < ApplicationController
  def index
    # @otters = Otter.all
    @otters = policy_scope(Otter).order(created_at: :desc)
    # petit commentaire de merde a retirer
  end

  def show
    @otter = Otter.find(params[:id])
  end

  def new
    @otter = Otter.new
    authorize @otter
  end

  def create
    @otter = Otter.new(otter_params)
    authorize @otter
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
    params.require(:otter).permit(:name, :age, :rating, :personality)
  end
end
