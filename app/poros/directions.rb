class Directions
  attr_reader :total_distance, :estimated_time, :maneuvers
  def initialize(data)
    @total_distance = data[:distance]
    @estimated_time = data[:formattedTime]
    @maneuvers = data[:legs].map { |leg| leg[:maneuvers] }.flatten
  end
end