class VehiclesController < ApplicationController

  def new
    @user = current_user
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user.id = current_user.id
    if @vehicle.save
      flash[:success] = 'Vehicle registered successfully'
      redirect_to user_vehicle_path(current_user)
    else
      flash[:error] = @vehicle.errors.full_messages.join(',')
      render'new'
    end
  end

  def vehicle_params
    params.require(:vehicle).permit(:user_id, :model, :year, :vin, :id)
  end
  private :vehicle_params

end
