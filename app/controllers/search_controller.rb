class SearchController < ApplicationController

  def show
    @offices = Office.find_by_search_terms(params[:location])
  end

end