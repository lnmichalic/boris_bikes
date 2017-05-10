require_relative 'bike'

class DockingStation
attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
      fail "No bikes available." if @bikes.length < 1
      @bikes.pop
  end

  def dock(bike)
    fail "Docking Station Full" if @bikes.length >= 20
    @bikes << bike
  end

end
