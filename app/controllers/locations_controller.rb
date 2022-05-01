class LocationsController < ApplicationController
  def new
    @streets = Location.all
  end
end