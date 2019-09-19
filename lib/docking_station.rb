require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
  
  @bikes = []
  @capacity = capacity
  end

  

  def release_bike
    #guard condition
    raise 'No bikes available' if empty?
    #return bike if bike available
    @bikes.pop
  
  end

  def dock(bike)
    #guard condition
    fail "Docking station full" if full?
   #add bike to docking station object
   @bikes.push(bike)  
  end
  
  private
  def full?
    return true if @bikes.length >= DEFAULT_CAPACITY

  end

  def empty?
    return true if @bikes.empty?
  end 
end
