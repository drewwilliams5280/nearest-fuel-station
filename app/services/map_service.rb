class MapService

  def self.get_directions(starting_location, ending_location)
    to_json('/directions/v2/route', { from: starting_location, to: ending_location })
  end

  def self.to_json(url, params = {})
    response = conn.get(url) do |f|
      f.params = params
      f.params[:key] = ENV["MAP_API_KEY"]
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://www.mapquestapi.com")
  end
end