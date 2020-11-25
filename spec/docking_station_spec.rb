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

    it "if docking_station is empty, when release_bike is called, throw an error" do
      docking_station = DockingStation.new
      expect{docking_station.release_bike}.to raise_error("no bikes")
    end
  #expect((expect(docking_station.instance_variable_get(:@station)).empty?).release_bike).to raise_error("No bikes!")
end

describe Bike do
    it "expects Bike to respond to method working?" do
        expect(Bike.new).to respond_to(:working?)
    end
end
