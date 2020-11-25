class Bike
    def working?
      true
    end
end

class DockingStation
    def initialize
        @station = []
    end

    def release_bike
      return Bike.new
    end

    def dock(bike)
      @station.push(bike)
    end

    def bike_in_dock?
        puts @station.length
    end
end
