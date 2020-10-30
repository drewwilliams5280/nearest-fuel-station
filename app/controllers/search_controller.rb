class SearchController < ApplicationController

  def index
    @station = StationFacade.find_nearest_station(params[:location])
    @directions = MapFacade.get_directions(params[:location], @station.address)
  end

end