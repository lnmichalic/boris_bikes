require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
      fail "No bikes available." if empty?
      release = @bikes.select{ |bike| bike if bike[1] == "working" }.first
      @bikes.delete(release)
  end

  def dock(bike, status = "working")
    fail "Docking Station Full" if full?
    @bikes << [bike, status]
    return "#{bike} is broken" if status == "broken"
  end

  private
    def full?
      @bikes.length >= @capacity
    end

    def empty?
      @bikes.empty?
    end
end
