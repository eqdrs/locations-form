class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def cities
    @target = params[:target]
    @cities = Location.where(postal_code: params[:postal_code])
                      .distinct
                      .pluck(:city)

    respond_to do |format|
      format.turbo_stream
    end
  end

  def streets
    @target = params[:target]
    @streets = Location.where(city: params[:city])
                       .distinct
                       .pluck(:street)

    respond_to do |format|
      format.turbo_stream
    end
  end
end