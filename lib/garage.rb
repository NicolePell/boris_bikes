require_relative 'bike_container'

class Garage

	include BikeContainer

		def dock_broken(van)
			van.broken_bikes.each do |bike|	
			dock(bike)
			van.release_broken
			end 
		end

		def fix_bike
			broken_bikes.each do |bike|
			bike.fix!
			end
		end

end
