class StationService

  def self.nearest_location_details(location)
    to_json('/api/alt-fuel-stations/v1/nearest.json', { location: location } )
  end
  
  def self.to_json(url, params = {})
    response = conn.get(url) do |f|
      f.params = params
      f.params[:api_key] = ENV["NREL_API_KEY"]
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://developer.nrel.gov")
  end

end