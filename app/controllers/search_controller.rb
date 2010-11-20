class SearchController < ApplicationController

  def show
    @offices = Office.search(params[:location])
  end

end