require './lib/bike'

class DockingStation

  def release_bike
    fail 'No bikes available' if @bike == nil
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike

end
