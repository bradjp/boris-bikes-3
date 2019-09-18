require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    @bike
    #needs to give us a bike object
  end

  def dock(bike)
   #add bike to self
   @bike = bike
  end

end
