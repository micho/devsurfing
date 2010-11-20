class HomeController < ApplicationController

  def index
    @offices = Office.all
  end

end