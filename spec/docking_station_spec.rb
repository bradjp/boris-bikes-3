require 'docking_station'

describe DockingStation do
  it "responds to release_bike" do
    instance = DockingStation.new
    expect(instance).to respond_to(:release_bike)
  end
  it "creates a docking station object with a default value 20" do
    docking_station = DockingStation.new
    expect(docking_station.capacity).to eq 20
  end
  it "takes an argument specifying number of bikes" do
  docking_station = DockingStation.new(40)
  expect(docking_station.capacity).to eq 40
  end

  describe '#release_bike' do
    it "releases bike" do
      bike = Bike.new
      subject.dock(bike)
      #release docked bike
      expect(subject.release_bike).to eq bike
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }
  
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to include bike
  end
  describe '#release_bike'
  it "should raise an error when dock is empty" do
    expect { subject.release_bike }.to raise_error('No bikes available')
  end
  describe '#dock' do
  it 'raises an error when dock is full' do
    subject.capacity.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
    end
  end

  
  

end
