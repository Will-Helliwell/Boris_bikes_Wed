require 'docking_station.rb'

describe Bike do
  it "responds to working?" do
    expect(Bike.new).to respond_to(:working?)
  end
end
