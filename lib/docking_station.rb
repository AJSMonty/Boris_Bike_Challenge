class Bike
    def working?
      true
    end
end

class DockingStation
    def initialize
    end

    def release_bike
      return Bike.new
    end
end
