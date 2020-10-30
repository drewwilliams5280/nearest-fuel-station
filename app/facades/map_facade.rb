class MapFacade

  def self.get_directions(starting_location, ending_location)
    Directions.new(MapService.get_directions(starting_location, ending_location)[:route])
  end

end