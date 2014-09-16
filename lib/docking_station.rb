class DockingStation

	def initialize
		@bikes = []
	end

	def bike_count
		@bikes.count
	end

	def dock(bike)
		@bikes << Bike.new
	end

	def release(bike)
		@bikes.delete(bike)
	end

end