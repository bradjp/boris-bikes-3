require 'docking_station'

describe DockingStation do
  it "responds to release_bike" do
    instance = DockingStation.new
    expect(instance).to respond_to(:release_bike)
  end

  # it { is_expected.to respond_to release_bike }
end
