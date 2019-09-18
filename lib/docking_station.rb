require_relative 'bike'

class DockingStation
  def release_bike
    @bike = Bike.new
    #needs to give us a bike object
  end
end
