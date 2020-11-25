require 'docking_station'

describe DockingStation do
    it "expects DockingStation to respond to the method release_bike" do
        expect(DockingStation.new).to respond_to{release_bike}
    end
end