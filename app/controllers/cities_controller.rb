class CitiesController < ApplicationController

  def show
    @city = City.find(params[:id])
    @offices = @city.offices
  end

end