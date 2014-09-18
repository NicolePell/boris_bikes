# load BikeContainer
require_relative 'bike_container'

class DockingStation

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def release_broken
		bikes.delete(broken_bikes.pop)
	end

end
