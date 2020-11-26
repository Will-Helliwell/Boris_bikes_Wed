require 'docking_station.rb'

describe DockingStation do

  describe '#release_bike' do
    it "responds to release_bike" do
      expect(subject).to respond_to(:release_bike)
    end
    it "gets a bike when relase_bike is called" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end
    it "released bike is working" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike.working?).to eq(true)
    end
    it "rasies an error when called on an empty docking station" do
      expect {subject.release_bike}.to raise_error('No bikes available')
    end
  end



  it "responds to dock and shows the docked bike" do
    bike = Bike.new
    expect(subject).to respond_to(:dock).with(1).argument
    expect(subject.dock(bike)).to eq(bike)
  end

  it "can show docked bikes when read with .bike" do
    bike = Bike.new
    station = DockingStation.new
    station.dock(bike)
    expect(subject).to respond_to(:bike)
    expect(station.bike).to eq(bike)
  end

end
