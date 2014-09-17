require_relative 'bike_container'

class Van

	include BikeContainer

	def broken_bike
		bikes.select {|bike| bike.broken? }
	end

end

# def release(bike)
# 		raise "Station is empty" if empty?
# 		bikes.delete(available_bikes.pop)
# 	end