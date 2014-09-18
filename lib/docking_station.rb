# load BikeContainer
require_relative 'bike_container'

class DockingStation

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

		def dock_fixed(van)
		van.available_bikes.each do |bike|
			dock(bike)
			van.release(bike)
		end
	end

end
