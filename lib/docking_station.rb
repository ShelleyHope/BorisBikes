class DockingStation

  def initialize(bikes=[])
    @bikes = bikes
  end

  def has_bikes?
    @bikes.any?
  end

  def available_bikes
    @bikes.reject { |bike| bike.broken? }
  end

  def release_bike
    @bikes.pop unless @bikes.last.broken?
  end

end