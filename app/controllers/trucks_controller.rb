class TrucksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :is_user?, except: [:index, :show] #metodo boleano, devuelve true o false
  before_action :set_truck, only: [:show, :edit, :update, :destroy]


  def index
    @trucks = Truck.all
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(truck_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_truck
    @truck = Truck.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def truck_params
    params.require(:truck).permit(:user_id, :truck_type_id, :truck_merchandise_id, :truck_load_id, :coverage_id, :city_id, :gps, :available_now, :image, :latitude, :longitude, :price_per_km )
  end

  def is_user?
    unless current_user.user?
      flash[:alert] = "you don´t have permissions"
      redirect_to trucks_path
    end
  end


end
