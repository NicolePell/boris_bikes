require_relative 'bike_container'

class Garage

	include BikeContainer

	def accept(bike)
		bike.fix!
		#dock(bike)
	end

		def dock_broken(van)
		van.broken_bikes.each do |bike|
			dock(bike)
			van.release_broken
		end 
	end

end
