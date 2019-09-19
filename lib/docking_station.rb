require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    #guard condition
    raise 'No bikes available' unless @bike
    #return bike if bike available
    @bike
  
  end

  def dock(bike)
    #guard condition
    fail "Docking station full" if @bike
   #add bike to docking station object
   @bike = bike
  end

end
