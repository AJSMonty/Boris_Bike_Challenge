require 'docking_station'

describe DockingStation do
    it "expects DockingStation to respond to the method release_bike" do
        expect(DockingStation.new).to respond_to{release_bike}
    end

    it "releases a bike when docking_station.release_bike is called" do
      expect((DockingStation.new).release_bike).to be_an_instance_of(Bike)
    end

    it "expects bike.working? to equal true" do
      expect((Bike.new).working?).to eq true
    end

    it "expect docking_station to respond to dock" do
        expect(DockingStation.new).to respond_to(:dock).with(1).argument
    end
end
