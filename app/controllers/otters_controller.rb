class OttersController < ApplicationController
  def index 
    @otters = Otter.all
  end

  def new 
    @otter = Otter.new
  end

  def create 
    @otter = Otter.new(otter_params)
    @otter.save 
    redirect_to otter_path(@otter)
  end

  private

  def otter_params
    params.require(:otter).permit(:name, :age, :rating, :personality)
end
