require_relative 'bike_container'

class Van

	include BikeContainer

	def dock_broken(station)
		station.broken_bikes.each do |bike|
			dock(bike)
			station.release_broken
		end 
	end

end

