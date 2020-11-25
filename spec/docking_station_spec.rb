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

end
