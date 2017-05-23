class BikesController < ApplicationController
  before_action :set_bike, only: [:show]

  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
    # @brands = Brand.all
    @brand = Brand.new
    # @brand_models = BrandModel.all
    # raise
  end

  def create
    # raise
    @bike = Bike.new(bike_params)
    # raise
    if @bike.save
      redirect_to @bike
    else
      render :new
    end
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:id, :color, :electric, :daily_price_in_cents, :description, :address, :user_id, :brand_model_id, :photo)
  end

end
