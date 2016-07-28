class LocationsController < ApplicationController

  def index
    @locations = Location.all
    flash[:error] = 'No locations registered.' if @locations.empty?
  end

  def new
      @location= Location.new
  end

  def create
    @location = Location.new(locations_params)
      if  @location.save
      flash[:success] = 'Location registered successfully'
      redirect_to locations_path
    else
      flash[:error] = @location.errors.full_messages.join(',')
      render'new'
    end
  end

  def locations_params
    params.require(:location).permit(:latitude, :name, :longitude, :description, :max_slots, :address)
  end
  private :locations_params
end
