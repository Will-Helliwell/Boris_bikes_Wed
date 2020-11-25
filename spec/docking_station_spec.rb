require 'docking_station.rb'

describe DockingStation do

  it "responds to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "gets a bike when relase_bike is called" do
    expect(DockingStation.new.release_bike).to be_a_kind_of(Bike)
  end

  it "bike is working" do
    expect(DockingStation.new.release_bike.working?).to eq(true)
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
