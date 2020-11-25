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
      if @station.empty?
        fail "no bikes"
      else
        Bike.new
      end
    end

    def dock(bike)
      @station.push(bike)
    end

    def bike_in_dock?
        puts @station.length
    end
end
