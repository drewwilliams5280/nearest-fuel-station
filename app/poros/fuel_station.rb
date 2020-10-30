class FuelStation
  attr_reader :name, :street_address, :city, :state, :zip_code, :address, :fuel_type, :access_times
  def initialize(data)
    @name = data[:station_name]
    @street_address = data[:street_address]
    @city = data[:city]
    @state = data[:state]
    @zip_code = data[:zip]
    @address = "#{@street_address}, #{@city}, #{@state} #{@zip_code}"
    @fuel_type = data[:fuel_type_code]
    @access_times = data[:access_days_time]
  end
end