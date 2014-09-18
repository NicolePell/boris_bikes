require_relative 'bike_container'

class Van

	include BikeContainer

end

# def release(bike)
# 		raise "Station is empty" if empty?
# 		bikes.delete(available_bikes.pop)
# 	end