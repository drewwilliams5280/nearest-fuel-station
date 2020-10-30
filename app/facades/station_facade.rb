class StationFacade

  def self.find_nearest_station(location)
    FuelStation.new(StationService.nearest_location_details(location)[:fuel_stations][0])
  end

end